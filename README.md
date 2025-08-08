# EduVial Database 

> **Archivos "mantén los nombres tal cual" :**
> - `01_script.sql`
> - `02_data.sql`
> - `03_laws.sql`
> - `04_cleanup.sql` *(se queda)*
> - `05_insert_preguntas_total.sql`
> - `Filtracion.sql` *(consultas útiles)*
> - `full_backup.sql`

---

## Arranque Base de datos

**Encender el contenedor**
```powershell
docker start eduvial_db
```

**Entrar a PostgreSQL dentro del contenedor**
```powershell
docker exec -it eduvial_db psql -U eduvial_user -d eduvial_db
```
Comandos útiles dentro de `psql`:
- Salir: `\q`
- Listar tablas: `\dt`
- Describir una tabla: `\d+ nombre_tabla`
- **IMPORTANTE con `"USER"`** (mayúsculas y comillas):
  - `\d+ "USER"`
  - `SELECT * FROM "USER" LIMIT 5;`

---

## Orden de scripts (manual)

> Si la BD ya está funcionando, **no es necesario** recrear el esquema.  
> Ejecuta scripts **solo** si necesitas reconstruir o alinear datos.

1. `01_script.sql` — crea todo el esquema real:
   - ENUMs: `question_type_enum`, `question_category_enum`, `user_role_enum`
   - Tabla **"USER"** (mayúsculas) + vista `app_user`
   - Módulo exámenes/preguntas: `question` (con `category`), `answer_option` (índice: 1 correcta), `exam`, `exam_question`
   - Intentos/respuestas: `exam_attempt`, `user_answer`
   - Lecciones/progreso/gamificación y leyes
2. `02_data.sql` — datos base mínimos .
3. `03_laws.sql` — carga artículos de ley y categorías.
4. `04_cleanup.sql` — **No tocar/ Ignorar**. Solo borra legacy (`quest`, `opt`, `ans`, `exam_result`, `exam_progress`). Si esas tablas no existen, puedes saltarlo.
5. `05_insert_preguntas_total.sql` — operativo para el front/back:
   - Inserta **answer_option** (A/B/C/D; **una** correcta por pregunta)
   - Llena **exam_question** (asigna preguntas a exámenes)
   - Crea la **vista** `v_questions_front` (mapea `Señales → 'peatones'` y genera `lvl` numérico)


**Ejemplo de ejecución manual desde PowerShell** (ajusta la ruta si tus `.sql` están en otra carpeta del contenedor):
```powershell
docker exec -i eduvial_db psql -U eduvial_user -d eduvial_db -f /docker-entrypoint-initdb.d/01_script.sql
docker exec -i eduvial_db psql -U eduvial_user -d eduvial_db -f /docker-entrypoint-initdb.d/02_data.sql
docker exec -i eduvial_db psql -U eduvial_user -d eduvial_db -f /docker-entrypoint-initdb.d/03_laws.sql
docker exec -i eduvial_db psql -U eduvial_user -d eduvial_db -f /docker-entrypoint-initdb.d/04_cleanup.sql   # opcional
docker exec -i eduvial_db psql -U eduvial_user -d eduvial_db -f /docker-entrypoint-initdb.d/05_insert_preguntas_total.sql
```

---

## Vista para el frontend (`v_questions_front`)

El frontend espera `cat = 'peatones'` para la categoría **Señales** (además de `simulaciones` y `escenarios`) y un `lvl` numérico. La vista lo expone así:

```sql
SELECT * FROM v_questions_front LIMIT 10;
-- Filtro por categoría esperada por el front:
SELECT * FROM v_questions_front WHERE cat = 'peatones';
```

Internamente, la BD usa `question.category` como ENUM con valores: `Señales`, `Simulaciones`, `Escenarios`.  
La vista mapea **`Señales → 'peatones'`** para no tocar el front.

---

## Consultas útiles (backend / QA)

**Preguntas por categoría (ENUM real):**
```sql
SELECT category, COUNT(*)
FROM question
GROUP BY category
ORDER BY category;
```

**Validar calidad de opciones (4 por pregunta; 1 correcta):**
```sql
WITH c AS (
  SELECT q.question_id,
         COUNT(ao.option_id) AS opciones,
         SUM(CASE WHEN ao.is_correct THEN 1 ELSE 0 END) AS correctas
  FROM question q
  LEFT JOIN answer_option ao ON ao.question_id = q.question_id
  GROUP BY q.question_id
)
SELECT * FROM c
WHERE opciones < 2 OR correctas <> 1
ORDER BY question_id;
```

**Preguntas asignadas por examen:**
```sql
SELECT e.title, COUNT(eq.question_id) AS preguntas
FROM exam e
LEFT JOIN exam_question eq ON eq.exam_id = e.exam_id
GROUP BY e.exam_id, e.title
ORDER BY e.exam_id;
```

---

## Filtrado útil (de `Filtracion.sql`)

**1) Exportar preguntas + opciones (JSON por pregunta):**
```sql
SELECT q.question_id,
       q.question_text,
       q.category::text AS category,
       json_agg(json_build_object(
         'option_id', ao.option_id,
         'option_text', ao.option_text,
         'is_correct', ao.is_correct
       ) ORDER BY ao.option_id) AS options
FROM question q
LEFT JOIN answer_option ao ON ao.question_id = q.question_id
GROUP BY q.question_id, q.question_text, q.category
ORDER BY q.question_id;
```

**2) Filtrar por categoría (ENUM) y exportar a JSON:**
```sql
SELECT json_agg(row_to_json(t))
FROM (
  SELECT q.question_id,
         q.question_text,
         q.category::text AS category,
         (
           SELECT json_agg(row_to_json(ao_sub))
           FROM (
             SELECT option_id, option_text, is_correct
             FROM answer_option
             WHERE question_id = q.question_id
             ORDER BY option_id
           ) ao_sub
         ) AS options
  FROM question q
  WHERE q.category = 'Señales'::question_category_enum   -- cambia por 'Simulaciones' o 'Escenarios'
  ORDER BY q.question_id
) t;
```

**3) Exportar exámenes con sus preguntas (IDs):**
```sql
SELECT e.exam_id, e.title,
       json_agg(eq.question_id ORDER BY eq.question_id) AS question_ids
FROM exam e
LEFT JOIN exam_question eq ON eq.exam_id = e.exam_id
GROUP BY e.exam_id, e.title
ORDER BY e.exam_id;
```

---

## Backups y restauración

**Generar un NUEVO full backup (host → archivo .sql):**
```powershell
# Dump lógico (esquema + datos)
docker exec -i eduvial_db pg_dump -U eduvial_user -d eduvial_db > full_backup_$(Get-Date -Format yyyyMMdd_HHmmss).sql
```
*(En CMD, usa `> full_backup.sql` sin `$(Get-Date...)`)*

**Restaurar un backup en la misma BD**
```powershell
docker exec -i eduvial_db psql -U eduvial_user -d eduvial_db -f /path/inside/container/full_backup.sql
# o, desde el host:
type .\full_backup.sql | docker exec -i eduvial_db psql -U eduvial_user -d eduvial_db
```

---


## FAQ / Problemas comunes

**“relation 'USER' does not exist”** → usar comillas: `SELECT * FROM "USER";`  
**El front no ve preguntas** → verificar `answer_option`, `exam_question` y `v_questions_front`.  
**04_cleanup.sql** no se “corre” solo → es **opcional** y, si el contenedor ya estaba inicializado, **ejecútalo manualmente** con `psql -f`.

---

## Notas importantes
- La vista `v_questions_front` es **solo lectura** y no afecta el backend.
- Evitar tablas legacy (`quest`, `opt`, `ans`) y scripts viejos.
- Para ORMs (Prisma/Sequelize/TypeORM): se recomienda **introspección** contra la BD real:
  - Prisma: `npx prisma db pull`
  - Sequelize Auto: `npx sequelize-auto ...`
  - TypeORM Generator: `npx typeorm-model-generator ...`

