-- =========================
-- 05_insert_preguntas_total.sql (operativo con tu esquema real)
-- =========================
SET search_path TO public;

-- 0) Asegurar que existe un examen 1
INSERT INTO exam (exam_id, title, description, difficulty_level, points_awarded)
VALUES (1, 'Examen Básico de Seguridad Vial', 'Evalúa conocimientos básicos de tránsito', 'simple', 20)
ON CONFLICT (exam_id) DO NOTHING;

-- 1) Opciones por pregunta (1..15)
--    Cambia los textos cuando tengas los definitivos. Por ahora sirven para que el front/back funcionen.
WITH upsert_opts AS (
  SELECT 1 AS question_id, 'Opción A' AS a, 'Opción B' AS b, 'Opción C' AS c, 'Opción D' AS d, 'B' AS correct UNION ALL
  SELECT 2,'Opción A','Opción B','Opción C','Opción D','B' UNION ALL
  SELECT 3,'Opción A','Opción B','Opción C','Opción D','A' UNION ALL
  SELECT 4,'Opción A','Opción B','Opción C','Opción D','C' UNION ALL
  SELECT 5,'Opción A','Opción B','Opción C','Opción D','D' UNION ALL
  SELECT 6,'Opción A','Opción B','Opción C','Opción D','A' UNION ALL
  SELECT 7,'Opción A','Opción B','Opción C','Opción D','B' UNION ALL
  SELECT 8,'Opción A','Opción B','Opción C','Opción D','B' UNION ALL
  SELECT 9,'Opción A','Opción B','Opción C','Opción D','C' UNION ALL
  SELECT 10,'Opción A','Opción B','Opción C','Opción D','D' UNION ALL
  SELECT 11,'Opción A','Opción B','Opción C','Opción D','B' UNION ALL
  SELECT 12,'Opción A','Opción B','Opción C','Opción D','C' UNION ALL
  SELECT 13,'Opción A','Opción B','Opción C','Opción D','A' UNION ALL
  SELECT 14,'Opción A','Opción B','Opción C','Opción D','B' UNION ALL
  SELECT 15,'Opción A','Opción B','Opción C','Opción D','C'
)
-- Inserta solo si la pregunta aún no tiene opciones
INSERT INTO answer_option (question_id, option_text, is_correct)
SELECT u.question_id, opt.txt,
       CASE WHEN opt.letter = u.correct THEN TRUE ELSE FALSE END AS is_correct
FROM upsert_opts u
CROSS JOIN LATERAL (VALUES
  ('A', u.a), ('B', u.b), ('C', u.c), ('D', u.d)
) AS opt(letter, txt)
WHERE NOT EXISTS (
  SELECT 1 FROM answer_option ao WHERE ao.question_id = u.question_id
);

-- 2) Vincular preguntas al examen 1 (idempotente)
INSERT INTO exam_question (exam_id, question_id)
SELECT 1, q.question_id
FROM question q
WHERE q.question_id BETWEEN 1 AND 15
  AND NOT EXISTS (
    SELECT 1 FROM exam_question eq
    WHERE eq.exam_id = 1 AND eq.question_id = q.question_id
  )
ORDER BY q.question_id;

UPDATE question SET category = 'Señales' WHERE question_id = 7;
UPDATE question SET category = 'Señales' WHERE question_id = 16;
UPDATE question SET category = 'Señales' WHERE question_id = 19;
UPDATE question SET category = 'Señales' WHERE question_id = 22;
UPDATE question SET category = 'Señales' WHERE question_id = 24;
UPDATE question SET category = 'Señales' WHERE question_id = 27;
UPDATE question SET category = 'Señales' WHERE question_id = 32;
UPDATE question SET category = 'Señales' WHERE question_id = 35;
UPDATE question SET category = 'Señales' WHERE question_id = 39;
UPDATE question SET category = 'Señales' WHERE question_id = 42;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 4;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 6;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 9;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 17;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 20;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 23;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 26;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 29;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 30;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 31;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 33;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 34;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 36;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 41;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 44;
UPDATE question SET category = 'Simulaciones' WHERE question_id = 45;
UPDATE question SET category = 'Escenarios' WHERE question_id = 1;
UPDATE question SET category = 'Escenarios' WHERE question_id = 2;
UPDATE question SET category = 'Escenarios' WHERE question_id = 3;
UPDATE question SET category = 'Escenarios' WHERE question_id = 5;
UPDATE question SET category = 'Escenarios' WHERE question_id = 8;
UPDATE question SET category = 'Escenarios' WHERE question_id = 10;
UPDATE question SET category = 'Escenarios' WHERE question_id = 11;
UPDATE question SET category = 'Escenarios' WHERE question_id = 12;
UPDATE question SET category = 'Escenarios' WHERE question_id = 13;
UPDATE question SET category = 'Escenarios' WHERE question_id = 14;
UPDATE question SET category = 'Escenarios' WHERE question_id = 15;
UPDATE question SET category = 'Escenarios' WHERE question_id = 18;
UPDATE question SET category = 'Escenarios' WHERE question_id = 21;
UPDATE question SET category = 'Escenarios' WHERE question_id = 25;
UPDATE question SET category = 'Escenarios' WHERE question_id = 28;
UPDATE question SET category = 'Escenarios' WHERE question_id = 37;
UPDATE question SET category = 'Escenarios' WHERE question_id = 38;
UPDATE question SET category = 'Escenarios' WHERE question_id = 40;
UPDATE question SET category = 'Escenarios' WHERE question_id = 43;

-- Vista para que el front siga usando cat='peatones' y un lvl numérico
CREATE OR REPLACE VIEW v_questions_front AS
SELECT
  q.question_id AS id,
  q.question_text AS text,
  CASE
    WHEN q.category = 'Señales'::question_category_enum THEN 'peatones'  -- alias para el front
    ELSE LOWER(q.category::text)                                         -- 'simulaciones' | 'escenarios'
  END AS cat,
  CASE
    WHEN e.difficulty_level IN ('simple','basic','basico','básico') THEN 1
    WHEN e.difficulty_level IN ('advanced','avanzado') THEN 2
    ELSE 0
  END AS lvl
FROM question q
LEFT JOIN exam_question eq ON eq.question_id = q.question_id
LEFT JOIN exam e           ON e.exam_id      = eq.exam_id;

-- 3) Validaciones 
-- Preguntas con <2 opciones o !=1 correcta
WITH c AS (
  SELECT q.question_id,
         COUNT(ao.option_id) AS opciones,
         SUM(CASE WHEN ao.is_correct THEN 1 ELSE 0 END) AS correctas
  FROM question q
  LEFT JOIN answer_option ao ON ao.question_id = q.question_id
  GROUP BY q.question_id
)
SELECT * FROM c WHERE opciones < 2 OR correctas <> 1 ORDER BY question_id;

-- Conteo por categoría
SELECT category, COUNT(*) FROM question GROUP BY category ORDER BY 1;

-- Preguntas asignadas a examen
SELECT e.title, COUNT(eq.question_id) AS preguntas
FROM exam e
LEFT JOIN exam_question eq ON eq.exam_id = e.exam_id
GROUP BY e.exam_id, e.title
ORDER BY e.exam_id;


