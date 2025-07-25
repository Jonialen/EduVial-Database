-- Archivo comentado por Gemini
-- =====================================================================
-- INSERCIÓN MASIVA DE PREGUNTAS Y RESPUESTAS (VERSIÓN CORREGIDA)
-- Se utiliza una CTE (Common Table Expression) con `RETURNING id` para
-- obtener el ID de la pregunta recién creada y usarlo en la inserción
-- de sus opciones. Esto evita errores de clave foránea.
-- =====================================================================

-- Pregunta 1: Artículo 82 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué obligación tiene el conductor respecto al uso del cinturón de seguridad?',
    'Seguridad vial', 'Básico', 82
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Debe usarlo en todo momento mientras conduce', TRUE),
((SELECT id FROM new_quest), 'Solo debe usarlo en carreteras', FALSE),
((SELECT id FROM new_quest), 'Es opcional si maneja a baja velocidad', FALSE),
((SELECT id FROM new_quest), 'Solo es obligatorio para pasajeros', FALSE);

-- Pregunta 2: Artículo 35 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Cuál es la velocidad máxima permitida en zonas escolares?',
    'Seguridad vial', 'Básico', 35
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), '25 kilómetros por hora', TRUE),
((SELECT id FROM new_quest), '40 kilómetros por hora', FALSE),
((SELECT id FROM new_quest), '60 kilómetros por hora', FALSE),
((SELECT id FROM new_quest), 'No hay límite', FALSE);

-- Pregunta 3: Artículo 22 - Peatones
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Quién tiene prioridad en un paso de cebra sin semáforo?',
    'Peatones', 'Básico', 22
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'El peatón', TRUE),
((SELECT id FROM new_quest), 'El vehículo más grande', FALSE),
((SELECT id FROM new_quest), 'El conductor más rápido', FALSE),
((SELECT id FROM new_quest), 'El que toque la bocina primero', FALSE);

-- Pregunta 4: Artículo 47 - Normas generales
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué debe hacer un conductor al escuchar una sirena de emergencia?',
    'Normas generales', 'Básico', 47
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Ceder el paso inmediatamente', TRUE),
((SELECT id FROM new_quest), 'Aumentar la velocidad', FALSE),
((SELECT id FROM new_quest), 'Ignorarla si va apurado', FALSE),
((SELECT id FROM new_quest), 'Encender sus luces', FALSE);

-- Pregunta 5: Artículo 14 - Documentación
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué documento debe portar todo conductor?',
    'Documentación', 'Básico', 14
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Licencia de conducir vigente', TRUE),
((SELECT id FROM new_quest), 'Pasaporte', FALSE),
((SELECT id FROM new_quest), 'Factura del vehículo', FALSE),
((SELECT id FROM new_quest), 'Certificado médico', FALSE);

-- Pregunta 6: Artículo 68 - Normas generales
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué indica la prioridad de paso en una intersección?',
    'Normas generales', 'Intermedio', 68
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Que el conductor debe ceder el paso según las reglas establecidas', TRUE),
((SELECT id FROM new_quest), 'Que el conductor puede acelerar para cruzar primero', FALSE),
((SELECT id FROM new_quest), 'Que solo los peatones tienen prioridad', FALSE),
((SELECT id FROM new_quest), 'Que puede seguir sin detenerse si no hay semáforo', FALSE);

-- Pregunta 7: Artículo 56 - Circulación
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué significa una línea amarilla continua en la vía?',
    'Circulación', 'Intermedio', 56
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Prohibido adelantar', TRUE),
((SELECT id FROM new_quest), 'Zona de carga y descarga', FALSE),
((SELECT id FROM new_quest), 'Estacionamiento permitido', FALSE),
((SELECT id FROM new_quest), 'Cruce peatonal', FALSE);

-- Pregunta 8: Artículo 72 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Cuándo se permite el uso de luces altas?',
    'Seguridad vial', 'Intermedio', 72
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'En carretera y cuando no haya otros vehículos cerca', TRUE),
((SELECT id FROM new_quest), 'En la ciudad todo el tiempo', FALSE),
((SELECT id FROM new_quest), 'Siempre de noche', FALSE),
((SELECT id FROM new_quest), 'Solo en lluvia', FALSE);

-- Pregunta 9: Artículo 90 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué debe hacer si sufre un desperfecto mecánico en carretera?',
    'Seguridad vial', 'Intermedio', 90
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Colocar triángulos y señalizar adecuadamente', TRUE),
((SELECT id FROM new_quest), 'Esperar dentro del vehículo sin señalizar', FALSE),
((SELECT id FROM new_quest), 'Empujar el carro sin ayuda', FALSE),
((SELECT id FROM new_quest), 'Llamar a familiares', FALSE);

-- Pregunta 10: Artículo 61 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Cuál es la función del cinturón de seguridad?',
    'Seguridad vial', 'Intermedio', 61
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Proteger al conductor y pasajeros en caso de accidente', TRUE),
((SELECT id FROM new_quest), 'Adornar el asiento', FALSE),
((SELECT id FROM new_quest), 'Aumentar la velocidad', FALSE),
((SELECT id FROM new_quest), 'Ayudar a frenar', FALSE);

-- Pregunta 11: Artículo 75 - Circulación
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿En qué situación está prohibido adelantar otro vehículo según la ley?',
    'Circulación', 'Avanzado', 75
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'En curvas o zonas con visibilidad reducida', TRUE),
((SELECT id FROM new_quest), 'Solo si el otro vehículo va a alta velocidad', FALSE),
((SELECT id FROM new_quest), 'En cualquier vía pavimentada', FALSE),
((SELECT id FROM new_quest), 'Cuando el vehículo de atrás lo indica', FALSE);

-- Pregunta 12: Artículo 105 - Infracciones
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Cuál es la sanción por conducir bajo efectos del alcohol?',
    'Infracciones', 'Avanzado', 105
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Multa, suspensión de licencia y posible prisión', TRUE),
((SELECT id FROM new_quest), 'Solo una multa', FALSE),
((SELECT id FROM new_quest), 'Advertencia verbal', FALSE),
((SELECT id FROM new_quest), 'No tiene sanción', FALSE);

-- Pregunta 13: Artículo 132 - Vehículos
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué debe tener un vehículo para transportar personas?',
    'Vehículos', 'Avanzado', 132
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Asientos adecuados y medidas de seguridad', TRUE),
((SELECT id FROM new_quest), 'Solo ventanas', FALSE),
((SELECT id FROM new_quest), 'Radio funcional', FALSE),
((SELECT id FROM new_quest), 'Tanque lleno', FALSE);

-- Pregunta 14: Artículo 149 - Autoridades
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué autoridad puede detener a un vehículo en circulación?',
    'Autoridades', 'Avanzado', 149
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Policía Nacional Civil o PMT', TRUE),
((SELECT id FROM new_quest), 'Cualquier ciudadano', FALSE),
((SELECT id FROM new_quest), 'El juez de paz', FALSE),
((SELECT id FROM new_quest), 'El mecánico de confianza', FALSE);

-- Pregunta 15: Artículo 158 - Motociclistas
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Cuándo es obligatorio usar casco en motocicleta?',
    'Motociclistas', 'Avanzado', 158
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Siempre, tanto conductor como pasajero', TRUE),
((SELECT id FROM new_quest), 'Solo de noche', FALSE),
((SELECT id FROM new_quest), 'Solo en carretera', FALSE),
((SELECT id FROM new_quest), 'Solo si hay lluvia', FALSE);

-- Pregunta 16: Artículo 33 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué color indica precaución en los semáforos?',
    'Seguridad vial', 'Básico', 33
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Amarillo', TRUE),
((SELECT id FROM new_quest), 'Rojo', FALSE),
((SELECT id FROM new_quest), 'Verde', FALSE),
((SELECT id FROM new_quest), 'Azul', FALSE);

-- Pregunta 17: Artículo 40 - Normas generales
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué debe hacer un conductor antes de cambiar de carril?',
    'Normas generales', 'Básico', 40
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Indicar con luces direccionales', TRUE),
((SELECT id FROM new_quest), 'Tocar la bocina', FALSE),
((SELECT id FROM new_quest), 'Esperar que otros se muevan', FALSE),
((SELECT id FROM new_quest), 'Mirar por el retrovisor solamente', FALSE);

-- Pregunta 18: Artículo 12 - Peatones
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Quién puede usar pasos peatonales elevados?',
    'Peatones', 'Básico', 12
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Todos los peatones', TRUE),
((SELECT id FROM new_quest), 'Solo personas con discapacidad', FALSE),
((SELECT id FROM new_quest), 'Solo niños', FALSE),
((SELECT id FROM new_quest), 'Solo adultos mayores', FALSE);

-- Pregunta 19: Artículo 19 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué significa una señal de alto?',
    'Seguridad vial', 'Básico', 19
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Debe detenerse completamente', TRUE),
((SELECT id FROM new_quest), 'Puede disminuir velocidad solamente', FALSE),
((SELECT id FROM new_quest), 'Solo aplica si hay tráfico', FALSE),
((SELECT id FROM new_quest), 'Avanzar lentamente', FALSE);

-- Pregunta 20: Artículo 52 - Normas generales
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué hacer si hay un accidente sin heridos?',
    'Normas generales', 'Básico', 52
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Mover los vehículos si es posible', TRUE),
((SELECT id FROM new_quest), 'Esperar sin mover nada', FALSE),
((SELECT id FROM new_quest), 'Llamar al seguro y bloquear el paso', FALSE),
((SELECT id FROM new_quest), 'Tocar la bocina para llamar la atención', FALSE);

-- Pregunta 21: Artículo 88 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué vehículos tienen prioridad de paso?',
    'Seguridad vial', 'Básico', 88
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Ambulancias, bomberos y policía con sirena activa', TRUE),
((SELECT id FROM new_quest), 'Taxis y buses', FALSE),
((SELECT id FROM new_quest), 'Camiones grandes', FALSE),
((SELECT id FROM new_quest), 'Carros nuevos', FALSE);

-- Pregunta 22: Artículo 31 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué significa una luz verde intermitente?',
    'Seguridad vial', 'Básico', 31
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Avanzar con precaución', TRUE),
((SELECT id FROM new_quest), 'Prohibido avanzar', FALSE),
((SELECT id FROM new_quest), 'Gire obligatoriamente', FALSE),
((SELECT id FROM new_quest), 'Cruce peatonal', FALSE);

-- Pregunta 23: Artículo 21 - Normas generales
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué se debe revisar antes de iniciar la conducción?',
    'Normas generales', 'Básico', 21
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Luces, frenos y neumáticos', TRUE),
((SELECT id FROM new_quest), 'Radio, clima y sonido', FALSE),
((SELECT id FROM new_quest), 'Número de pasajeros', FALSE),
((SELECT id FROM new_quest), 'Velocidad máxima', FALSE);

-- Pregunta 24: Artículo 67 - Peatones
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué indica una señal con un peatón?',
    'Peatones', 'Básico', 67
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Paso peatonal', TRUE),
((SELECT id FROM new_quest), 'Cruce de animales', FALSE),
((SELECT id FROM new_quest), 'Zona de carga', FALSE),
((SELECT id FROM new_quest), 'Parada de bus', FALSE);

-- Pregunta 25: Artículo 39 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué debe hacer en una zona escolar?',
    'Seguridad vial', 'Básico', 39
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Reducir velocidad y estar atento a niños', TRUE),
((SELECT id FROM new_quest), 'Acelerar para salir rápido', FALSE),
((SELECT id FROM new_quest), 'Tocar bocina', FALSE),
((SELECT id FROM new_quest), 'Encender luces altas', FALSE);

-- Pregunta 26: Artículo 108 - Normas generales
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué hacer si un semáforo está apagado?',
    'Normas generales', 'Intermedio', 108
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Aplicar las normas de prioridad y precaución', TRUE),
((SELECT id FROM new_quest), 'Ignorar y seguir', FALSE),
((SELECT id FROM new_quest), 'Tocar bocina y avanzar', FALSE),
((SELECT id FROM new_quest), 'Esperar que alguien dirija', FALSE);

-- Pregunta 27: Artículo 98 - Circulación
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué indica una doble línea amarilla?',
    'Circulación', 'Intermedio', 98
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Prohibido adelantar en ambos sentidos', TRUE),
((SELECT id FROM new_quest), 'Cruce peatonal doble', FALSE),
((SELECT id FROM new_quest), 'Zona escolar', FALSE),
((SELECT id FROM new_quest), 'Límite de velocidad', FALSE);

-- Pregunta 28: Artículo 141 - Infracciones
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué pasa si no se respetan los límites de velocidad?',
    'Infracciones', 'Intermedio', 141
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Puede causar accidentes y recibir sanciones', TRUE),
((SELECT id FROM new_quest), 'Nada si es de noche', FALSE),
((SELECT id FROM new_quest), 'Solo afecta en carretera', FALSE),
((SELECT id FROM new_quest), 'Es legal si hay poco tráfico', FALSE);

-- Pregunta 29: Artículo 77 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué tipo de luces deben usarse en neblina?',
    'Seguridad vial', 'Intermedio', 77
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Luces bajas o antiniebla', TRUE),
((SELECT id FROM new_quest), 'Luces altas', FALSE),
((SELECT id FROM new_quest), 'Luces intermitentes', FALSE),
((SELECT id FROM new_quest), 'Solo luces de parqueo', FALSE);

-- Pregunta 30: Artículo 130 - Vehículos
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué es el mantenimiento preventivo?',
    'Vehículos', 'Intermedio', 130
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Revisar el vehículo antes de que falle', TRUE),
((SELECT id FROM new_quest), 'Arreglar solo cuando se arruina', FALSE),
((SELECT id FROM new_quest), 'Lavar el carro', FALSE),
((SELECT id FROM new_quest), 'Cambiar pintura', FALSE);

-- Pregunta 31: Artículo 116 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Cuál es el rol del espejo retrovisor?',
    'Seguridad vial', 'Intermedio', 116
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Ver vehículos detrás', TRUE),
((SELECT id FROM new_quest), 'Verse el cabello', FALSE),
((SELECT id FROM new_quest), 'Leer mensajes', FALSE),
((SELECT id FROM new_quest), 'Observar el copiloto', FALSE);

-- Pregunta 32: Artículo 55 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué indica una señal triangular con borde rojo?',
    'Seguridad vial', 'Intermedio', 55
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Advertencia de peligro', TRUE),
((SELECT id FROM new_quest), 'Estacionamiento permitido', FALSE),
((SELECT id FROM new_quest), 'Cruce obligatorio', FALSE),
((SELECT id FROM new_quest), 'Fin de vía', FALSE);

-- Pregunta 33: Artículo 65 - Normas generales
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué hacer en un cruce sin señalización?',
    'Normas generales', 'Intermedio', 65
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Ceder el paso según prioridad', TRUE),
((SELECT id FROM new_quest), 'Acelerar primero', FALSE),
((SELECT id FROM new_quest), 'Esperar a que alguien pase', FALSE),
((SELECT id FROM new_quest), 'Tocar bocina', FALSE);

-- Pregunta 34: Artículo 119 - Peatones
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué hacer si un peatón cruza inesperadamente?',
    'Peatones', 'Intermedio', 119
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Reducir velocidad y ceder el paso', TRUE),
((SELECT id FROM new_quest), 'Acelerar para evitar frenar', FALSE),
((SELECT id FROM new_quest), 'Ignorar y seguir', FALSE),
((SELECT id FROM new_quest), 'Pitar fuerte', FALSE);

-- Pregunta 35: Artículo 109 - Ciclistas
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué indica una señal con bicicleta?',
    'Ciclistas', 'Intermedio', 109
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Ciclovía o cruce de ciclistas', TRUE),
((SELECT id FROM new_quest), 'Parqueo de motos', FALSE),
((SELECT id FROM new_quest), 'Zona escolar', FALSE),
((SELECT id FROM new_quest), 'Fin de vía', FALSE);

-- Pregunta 36: Artículo 159 - Transporte
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué medidas debe tomar el conductor de transporte público?',
    'Transporte', 'Avanzado', 159
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Revisar frenos, luces y tener licencia específica', TRUE),
((SELECT id FROM new_quest), 'Tener uniforme', FALSE),
((SELECT id FROM new_quest), 'Usar solo efectivo', FALSE),
((SELECT id FROM new_quest), 'Llevar música alta', FALSE);

-- Pregunta 37: Artículo 198 - Licencias
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué condiciones impiden manejar legalmente?',
    'Licencias', 'Avanzado', 198
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Estar ebrio o bajo drogas', TRUE),
((SELECT id FROM new_quest), 'Estar triste', FALSE),
((SELECT id FROM new_quest), 'No desayunar', FALSE),
((SELECT id FROM new_quest), 'No tener copiloto', FALSE);

-- Pregunta 38: Artículo 164 - Vehículos
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué se exige para vehículos de carga pesada?',
    'Vehículos', 'Avanzado', 164
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Cumplir límites de peso y señalización', TRUE),
((SELECT id FROM new_quest), 'Tener luces LED', FALSE),
((SELECT id FROM new_quest), 'Color blanco', FALSE),
((SELECT id FROM new_quest), 'Claxon fuerte', FALSE);

-- Pregunta 39: Artículo 173 - Emergencia
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué indica una señal azul con una H?',
    'Emergencia', 'Avanzado', 173
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Cercanía de un hospital', TRUE),
((SELECT id FROM new_quest), 'Helipuerto', FALSE),
((SELECT id FROM new_quest), 'Hidrante', FALSE),
((SELECT id FROM new_quest), 'Horario limitado', FALSE);

-- Pregunta 40: Artículo 184 - Transporte
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué establece la ley sobre transporte escolar?',
    'Transporte', 'Avanzado', 184
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Vehículos adecuados y conductores certificados', TRUE),
((SELECT id FROM new_quest), 'Solo se requiere pintura amarilla', FALSE),
((SELECT id FROM new_quest), 'Debe tener radio', FALSE),
((SELECT id FROM new_quest), 'Puede ir sobrecargado', FALSE);

-- Pregunta 41: Artículo 187 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué debe hacer un conductor tras un accidente con heridos?',
    'Seguridad vial', 'Avanzado', 187
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Prestar auxilio y llamar a emergencias', TRUE),
((SELECT id FROM new_quest), 'Huir para evitar líos', FALSE),
((SELECT id FROM new_quest), 'Esperar a familiares', FALSE),
((SELECT id FROM new_quest), 'Tomar fotos y subirlas', FALSE);

-- Pregunta 42: Artículo 195 - Circulación
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué indica una línea blanca discontinua?',
    'Circulación', 'Avanzado', 195
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Puede cambiar de carril si es seguro', TRUE),
((SELECT id FROM new_quest), 'Debe detenerse', FALSE),
((SELECT id FROM new_quest), 'Zona de parqueo', FALSE),
((SELECT id FROM new_quest), 'Paso peatonal obligatorio', FALSE);

-- Pregunta 43: Artículo 200 - Documentación
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué documento prueba que un vehículo es legal?',
    'Documentación', 'Avanzado', 200
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Tarjeta de circulación', TRUE),
((SELECT id FROM new_quest), 'Factura del mecánico', FALSE),
((SELECT id FROM new_quest), 'Carné del piloto', FALSE),
((SELECT id FROM new_quest), 'Multa anterior', FALSE);

-- Pregunta 44: Artículo 161 - Mecánica
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué sistema reduce la velocidad del vehículo?',
    'Mecánica', 'Avanzado', 161
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Frenos', TRUE),
((SELECT id FROM new_quest), 'Dirección hidráulica', FALSE),
((SELECT id FROM new_quest), 'Claxon', FALSE),
((SELECT id FROM new_quest), 'Radiador', FALSE);

-- Pregunta 45: Art��culo 178 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué riesgo hay al manejar con llantas lisas?',
    'Seguridad vial', 'Avanzado', 178
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Mayor probabilidad de derrape y accidentes', TRUE),
((SELECT id FROM new_quest), 'Mejor tracción', FALSE),
((SELECT id FROM new_quest), 'Gasto reducido', FALSE),
((SELECT id FROM new_quest), 'Mejor visibilidad', FALSE);

-- Pregunta 46: Artículo 1 - Normas generales
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Cuál es el objetivo principal de la ley de tránsito?',
    'Normas generales', 'Básico', 1
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Regular la circulación y garantizar la seguridad vial', TRUE),
((SELECT id FROM new_quest), 'Recaudar multas', FALSE),
((SELECT id FROM new_quest), 'Limitar el número de vehículos', FALSE),
((SELECT id FROM new_quest), 'Promover el uso de bicicletas', FALSE);

-- Pregunta 47: Artículo 5 - Peatones
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué deben hacer los peatones al cruzar una calle?',
    'Peatones', 'Básico', 5
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Utilizar los pasos de cebra y semáforos peatonales', TRUE),
((SELECT id FROM new_quest), 'Cruzar por cualquier parte si no hay carros', FALSE),
((SELECT id FROM new_quest), 'Correr para cruzar más rápido', FALSE),
((SELECT id FROM new_quest), 'Hacer señales con las manos a los conductores', FALSE);

-- Pregunta 48: Artículo 10 - Documentación
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué es la tarjeta de circulación?',
    'Documentación', 'Básico', 10
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'El documento que identifica al vehículo', TRUE),
((SELECT id FROM new_quest), 'Un permiso para estacionar', FALSE),
((SELECT id FROM new_quest), 'La licencia del conductor', FALSE),
((SELECT id FROM new_quest), 'Un seguro contra accidentes', FALSE);

-- Pregunta 49: Artículo 15 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué es una señal de ceda el paso?',
    'Seguridad vial', 'Básico', 15
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Una señal que obliga a dar prioridad a otros vehículos', TRUE),
((SELECT id FROM new_quest), 'Una señal para detenerse completamente', FALSE),
((SELECT id FROM new_quest), 'Una señal que indica una curva peligrosa', FALSE),
((SELECT id FROM new_quest), 'Una señal de límite de velocidad', FALSE);

-- Pregunta 50: Artículo 20 - Normas generales
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué se debe hacer al estacionar en una pendiente?',
    'Normas generales', 'Básico', 20
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Dejar el vehículo con freno de mano y las ruedas giradas hacia la acera', TRUE),
((SELECT id FROM new_quest), 'Dejar el vehículo en neutral', FALSE),
((SELECT id FROM new_quest), 'No usar el freno de mano para no gastarlo', FALSE),
((SELECT id FROM new_quest), 'Dejar las ruedas rectas', FALSE);

-- Pregunta 51: Artículo 25 - Circulación
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué indica una línea blanca continua en la carretera?',
    'Circulación', 'Intermedio', 25
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'No se debe cambiar de carril', TRUE),
((SELECT id FROM new_quest), 'Se puede adelantar con precaución', FALSE),
((SELECT id FROM new_quest), 'Indica el borde de la carretera', FALSE),
((SELECT id FROM new_quest), 'Es una zona de estacionamiento', FALSE);

-- Pregunta 52: Artículo 30 - Seguridad vial
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué distancia de seguridad se debe mantener con el vehículo de adelante?',
    'Seguridad vial', 'Intermedio', 30
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Una distancia que permita frenar sin colisionar', TRUE),
((SELECT id FROM new_quest), 'La longitud de un carro', FALSE),
((SELECT id FROM new_quest), 'No importa la distancia si vas despacio', FALSE),
((SELECT id FROM new_quest), 'La mitad de la velocidad a la que se conduce', FALSE);

-- Pregunta 53: Artículo 35 - Infracciones
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué es una infracción de tránsito?',
    'Infracciones', 'Intermedio', 35
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Una violación a la ley de tránsito', TRUE),
((SELECT id FROM new_quest), 'Un accidente leve', FALSE),
((SELECT id FROM new_quest), 'Una recomendación de un oficial', FALSE),
((SELECT id FROM new_quest), 'Un problema mecánico del vehículo', FALSE);

-- Pregunta 54: Artículo 40 - Vehículos
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué luces se deben usar durante la noche?',
    'Vehículos', 'Intermedio', 40
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Las luces bajas en ciudad y altas en carretera sin vehículos de frente', TRUE),
((SELECT id FROM new_quest), 'Solo las luces de posición', FALSE),
((SELECT id FROM new_quest), 'Las luces de emergencia todo el tiempo', FALSE),
((SELECT id FROM new_quest), 'No es necesario usar luces si hay alumbrado público', FALSE);

-- Pregunta 55: Artículo 45 - Ciclistas
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué deben hacer los ciclistas en la vía pública?',
    'Ciclistas', 'Intermedio', 45
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Circular por la derecha y usar señales manuales', TRUE),
((SELECT id FROM new_quest), 'Circular en medio del carril para ser vistos', FALSE),
((SELECT id FROM new_quest), 'No usar casco si van despacio', FALSE),
((SELECT id FROM new_quest), 'Circular por las aceras', FALSE);

-- Pregunta 56: Artículo 50 - Transporte
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué es el transporte de carga?',
    'Transporte', 'Avanzado', 50
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'El traslado de mercancías en vehículos apropiados', TRUE),
((SELECT id FROM new_quest), 'Llevar maletas en el asiento trasero', FALSE),
((SELECT id FROM new_quest), 'El transporte de más de cinco personas', FALSE),
((SELECT id FROM new_quest), 'Cualquier vehículo con un remolque', FALSE);

-- Pregunta 57: Artículo 55 - Licencias
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué tipo de licencia se necesita para conducir un camión?',
    'Licencias', 'Avanzado', 55
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Una licencia de tipo pesado o profesional', TRUE),
((SELECT id FROM new_quest), 'La misma que para un carro particular', FALSE),
((SELECT id FROM new_quest), 'No se necesita licencia si es para uso personal', FALSE),
((SELECT id FROM new_quest), 'Una licencia de motocicleta', FALSE);

-- Pregunta 58: Artículo 60 - Vehículos
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué es el sistema de frenos ABS?',
    'Vehículos', 'Avanzado', 60
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Un sistema que evita que las ruedas se bloqueen al frenar', TRUE),
((SELECT id FROM new_quest), 'Un sistema de frenado automático', FALSE),
((SELECT id FROM new_quest), 'Un tipo de freno de mano', FALSE),
((SELECT id FROM new_quest), 'Un sistema que aumenta la velocidad', FALSE);

-- Pregunta 59: Artículo 65 - Emergencia
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué se debe hacer en caso de un accidente con heridos?',
    'Emergencia', 'Avanzado', 65
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Asegurar el área, llamar a emergencias y no mover a los heridos', TRUE),
((SELECT id FROM new_quest), 'Mover a los heridos a un lugar más cómodo', FALSE),
((SELECT id FROM new_quest), 'Intentar arreglar los vehículos antes de que llegue la ayuda', FALSE),
((SELECT id FROM new_quest), 'Discutir con el otro conductor para determinar la culpa', FALSE);

-- Pregunta 60: Artículo 70 - Transporte
WITH new_quest AS (
  INSERT INTO quest (txt, cat, lvl, lawid)
  VALUES (
    '¿Qué es el transporte público?',
    'Transporte', 'Avanzado', 70
  ) RETURNING id
)
INSERT INTO opt (qid, txt, correct) VALUES
((SELECT id FROM new_quest), 'Un servicio de transporte de pasajeros disponible para el público en general', TRUE),
((SELECT id FROM new_quest), 'Un vehículo que pertenece al gobierno', FALSE),
((SELECT id FROM new_quest), 'Cualquier vehículo con más de cuatro puertas', FALSE),
((SELECT id FROM new_quest), 'Un servicio de taxi', FALSE);