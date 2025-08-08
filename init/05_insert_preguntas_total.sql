SET search_path TO public;

BEGIN;

-- =========================
-- PREGUNTAS + OPCIONES
-- =========================

-- Pregunta 1 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(1, '¿Qué obligación tiene el conductor respecto al uso del cinturón de seguridad?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 1 (ID generado = 1)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(1, 'Debe usarlo en todo momento mientras conduce', TRUE),
(1, 'Solo debe usarlo en carreteras', FALSE),
(1, 'Es opcional si maneja a baja velocidad', FALSE),
(1, 'Solo es obligatorio para pasajeros', FALSE);

-- Pregunta 2 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(2, '¿Cuál es la velocidad máxima permitida en zonas escolares?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 2 (ID generado = 2)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(2, '25 kilómetros por hora', TRUE),
(2, '40 kilómetros por hora', FALSE),
(2, '60 kilómetros por hora', FALSE),
(2, 'No hay límite', FALSE);

-- Pregunta 3 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(3, '¿Quién tiene prioridad en un paso de cebra sin semáforo?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 3 (ID generado = 3)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(3, 'El peatón', TRUE),
(3, 'El vehículo más grande', FALSE),
(3, 'El conductor más rápido', FALSE),
(3, 'El que toque la bocina primero', FALSE);

-- Pregunta 4 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(4, '¿Qué debe hacer un conductor al escuchar una sirena de emergencia?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 4 (ID generado = 4)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(4, 'Ceder el paso inmediatamente', TRUE),
(4, 'Aumentar la velocidad', FALSE),
(4, 'Ignorarla si va apurado', FALSE),
(4, 'Encender sus luces', FALSE);

-- Pregunta 5 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(5, '¿Qué documento debe portar todo conductor?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 5 (ID generado = 5)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(5, 'Licencia de conducir vigente', TRUE),
(5, 'Pasaporte', FALSE),
(5, 'Factura del vehículo', FALSE),
(5, 'Certificado médico', FALSE);

-- Pregunta 6 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(6, '¿Qué indica la prioridad de paso en una intersección?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 6 (ID generado = 6)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(6, 'Que el conductor debe ceder el paso según las reglas establecidas', TRUE),
(6, 'Que el conductor puede acelerar para cruzar primero', FALSE),
(6, 'Que solo los peatones tienen prioridad', FALSE),
(6, 'Que puede seguir sin detenerse si no hay semáforo', FALSE);

-- Pregunta 7 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(7, '¿Qué significa una línea amarilla continua en la vía?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 7 (ID generado = 7)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(7, 'Prohibido adelantar', TRUE),
(7, 'Zona de carga y descarga', FALSE),
(7, 'Estacionamiento permitido', FALSE),
(7, 'Cruce peatonal', FALSE);

-- Pregunta 8 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(8, '¿Cuándo se permite el uso de luces altas?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 8 (ID generado = 8)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(8, 'En carretera y cuando no haya otros vehículos cerca', TRUE),
(8, 'En la ciudad todo el tiempo', FALSE),
(8, 'Siempre de noche', FALSE),
(8, 'Solo en lluvia', FALSE);

-- Pregunta 9 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(9, '¿Qué debe hacer si sufre un desperfecto mecánico en carretera?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 9 (ID generado = 9)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(9, 'Colocar triángulos y señalizar adecuadamente', TRUE),
(9, 'Esperar dentro del vehículo sin señalizar', FALSE),
(9, 'Empujar el carro sin ayuda', FALSE),
(9, 'Llamar a familiares', FALSE);

-- Pregunta 10 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(10, '¿Qué hacer si ve humo saliendo del motor mientras conduce?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 10 (ID generado = 10)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(10, 'Proteger al conductor y pasajeros en caso de accidente', TRUE),
(10, 'Adornar el asiento', FALSE),
(10, 'Aumentar la velocidad', FALSE),
(10, 'Ayudar a frenar', FALSE);

-- Pregunta 11 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(11, '¿En qué situación está prohibido adelantar otro vehículo según la ley?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 11 (ID generado = 11)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(11, 'En curvas o zonas con visibilidad reducida', TRUE),
(11, 'Solo si el otro vehículo va a alta velocidad', FALSE),
(11, 'En cualquier vía pavimentada', FALSE),
(11, 'Cuando el vehículo de atrás lo indica', FALSE);

-- Pregunta 12 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(12, '¿Cuál es la sanción por conducir bajo efectos del alcohol?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 12 (ID generado = 12)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(12, 'Multa, suspensión de licencia y posible prisión', TRUE),
(12, 'Solo una multa', FALSE),
(12, 'Advertencia verbal', FALSE),
(12, 'No tiene sanción', FALSE);

-- Pregunta 13 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(13, '¿Qué debe tener un vehículo para transportar personas?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 13 (ID generado = 13)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(13, 'Asientos adecuados y medidas de seguridad', TRUE),
(13, 'Solo ventanas', FALSE),
(13, 'Radio funcional', FALSE),
(13, 'Tanque lleno', FALSE);

-- Pregunta 14 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(14, '¿Qué autoridad puede detener a un vehículo en circulación?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 14 (ID generado = 14)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(14, 'Policía Nacional Civil o PMT', TRUE),
(14, 'Cualquier ciudadano', FALSE),
(14, 'El juez de paz', FALSE),
(14, 'El mecánico de confianza', FALSE);

-- Pregunta 15 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(15, '¿Cuándo es obligatorio usar casco en motocicleta?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 15 (ID generado = 15)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(15, 'Siempre, tanto conductor como pasajero', TRUE),
(15, 'Solo de noche', FALSE),
(15, 'Solo en carretera', FALSE),
(15, 'Solo si hay lluvia', FALSE);

-- Pregunta 16 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(16, '¿Qué color indica precaución en los semáforos?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 16 (ID generado = 16)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(16, 'Amarillo', TRUE),
(16, 'Rojo', FALSE),
(16, 'Verde', FALSE),
(16, 'Azul', FALSE);

-- Pregunta 17 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(17, '¿Qué debe hacer un conductor antes de cambiar de carril?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 17 (ID generado = 17)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(17, 'Indicar con luces direccionales', TRUE),
(17, 'Tocar la bocina', FALSE),
(17, 'Esperar que otros se muevan', FALSE),
(17, 'Mirar por el retrovisor solamente', FALSE);

-- Pregunta 18 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(18, '¿Quién puede usar pasos peatonales elevados?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 18 (ID generado = 18)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(18, 'Todos los peatones', TRUE),
(18, 'Solo personas con discapacidad', FALSE),
(18, 'Solo niños', FALSE),
(18, 'Solo adultos mayores', FALSE);

-- Pregunta 19 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(19, '¿Qué significa una señal de alto?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 19 (ID generado = 19)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(19, 'Debe detenerse completamente', TRUE),
(19, 'Puede disminuir velocidad solamente', FALSE),
(19, 'Solo aplica si hay tráfico', FALSE),
(19, 'Avanzar lentamente', FALSE);

-- Pregunta 20 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(20, '¿Qué hacer si hay un accidente sin heridos?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 20 (ID generado = 20)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(20, 'Mover los vehículos si es posible', TRUE),
(20, 'Esperar sin mover nada', FALSE),
(20, 'Llamar al seguro y bloquear el paso', FALSE),
(20, 'Tocar la bocina para llamar la atención', FALSE);

-- Pregunta 21 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(21, '¿Qué vehículos tienen prioridad de paso?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 21 (ID generado = 21)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(21, 'Ambulancias, bomberos y policía con sirena activa', TRUE),
(21, 'Taxis y buses', FALSE),
(21, 'Camiones grandes', FALSE),
(21, 'Carros nuevos', FALSE);

-- Pregunta 22 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(22, '¿Qué significa una luz verde intermitente?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 22 (ID generado = 22)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(22, 'Avanzar con precaución', TRUE),
(22, 'Prohibido avanzar', FALSE),
(22, 'Gire obligatoriamente', FALSE),
(22, 'Cruce peatonal', FALSE);

-- Pregunta 23 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(23, '¿Qué se debe revisar antes de iniciar la conducción?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 23 (ID generado = 23)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(23, 'Luces, frenos y neumáticos', TRUE),
(23, 'Radio, clima y sonido', FALSE),
(23, 'Número de pasajeros', FALSE),
(23, 'Velocidad máxima', FALSE);

-- Pregunta 24 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(24, '¿Qué indica una señal con un peatón?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 24 (ID generado = 24)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(24, 'Paso peatonal', TRUE),
(24, 'Cruce de animales', FALSE),
(24, 'Zona de carga', FALSE),
(24, 'Parada de bus', FALSE);

-- Pregunta 25 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(25, '¿Qué debe hacer en una zona escolar?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 25 (ID generado = 25)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(25, 'Reducir velocidad y estar atento a niños', TRUE),
(25, 'Acelerar para salir rápido', FALSE),
(25, 'Tocar bocina', FALSE),
(25, 'Encender luces altas', FALSE);

-- Pregunta 26 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(26, '¿Qué hacer si un semáforo está apagado?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 26 (ID generado = 26)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(26, 'Aplicar las normas de prioridad y precaución', TRUE),
(26, 'Ignorar y seguir', FALSE),
(26, 'Tocar bocina y avanzar', FALSE),
(26, 'Esperar que alguien dirija', FALSE);

-- Pregunta 27 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(27, '¿Qué indica una doble línea amarilla?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 27 (ID generado = 27)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(27, 'Prohibido adelantar en ambos sentidos', TRUE),
(27, 'Cruce peatonal doble', FALSE),
(27, 'Zona escolar', FALSE),
(27, 'Límite de velocidad', FALSE);

-- Pregunta 28 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(28, '¿Qué pasa si no se respetan los límites de velocidad?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 28 (ID generado = 28)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(28, 'Puede causar accidentes y recibir sanciones', TRUE),
(28, 'Nada si es de noche', FALSE),
(28, 'Solo afecta en carretera', FALSE),
(28, 'Es legal si hay poco tráfico', FALSE);

-- Pregunta 29 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(29, '¿Qué tipo de luces deben usarse en neblina?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 29 (ID generado = 29)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(29, 'Luces bajas o antiniebla', TRUE),
(29, 'Luces altas', FALSE),
(29, 'Luces intermitentes', FALSE),
(29, 'Solo luces de parqueo', FALSE);

-- Pregunta 30 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(30, '¿Qué es el mantenimiento preventivo?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 30 (ID generado = 30)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(30, 'Revisar el vehículo antes de que falle', TRUE),
(30, 'Arreglar solo cuando se arruina', FALSE),
(30, 'Lavar el carro', FALSE),
(30, 'Cambiar pintura', FALSE);

-- Pregunta 31 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(31, '¿Cuál es el rol del espejo retrovisor?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 31 (ID generado = 31)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(31, 'Ver vehículos detrás', TRUE),
(31, 'Verse el cabello', FALSE),
(31, 'Leer mensajes', FALSE),
(31, 'Observar el copiloto', FALSE);

-- Pregunta 32 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(32, '¿Qué indica una señal triangular con borde rojo?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 32 (ID generado = 32)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(32, 'Advertencia de peligro', TRUE),
(32, 'Estacionamiento permitido', FALSE),
(32, 'Cruce obligatorio', FALSE),
(32, 'Fin de vía', FALSE);

-- Pregunta 33 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(33, '¿Qué hacer en un cruce sin señalización?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 33 (ID generado = 33)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(33, 'Ceder el paso según prioridad', TRUE),
(33, 'Acelerar primero', FALSE),
(33, 'Esperar a que alguien pase', FALSE),
(33, 'Tocar bocina', FALSE);

-- Pregunta 34 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(34, '¿Qué hacer si un peatón cruza inesperadamente?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 34 (ID generado = 34)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(34, 'Reducir velocidad y ceder el paso', TRUE),
(34, 'Acelerar para evitar frenar', FALSE),
(34, 'Ignorar y seguir', FALSE),
(34, 'Pitar fuerte', FALSE);

-- Pregunta 35 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(35, '¿Qué indica una señal con bicicleta?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 35 (ID generado = 35)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(35, 'Ciclovía o cruce de ciclistas', TRUE),
(35, 'Parqueo de motos', FALSE),
(35, 'Zona escolar', FALSE),
(35, 'Fin de vía', FALSE);

-- Pregunta 36 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(36, '¿Qué medidas debe tomar el conductor de transporte público?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 36 (ID generado = 36)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(36, 'Revisar frenos, luces y tener licencia específica', TRUE),
(36, 'Tener uniforme', FALSE),
(36, 'Usar solo efectivo', FALSE),
(36, 'Llevar música alta', FALSE);

-- Pregunta 37 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(37, '¿Qué condiciones impiden manejar legalmente?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 37 (ID generado = 37)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(37, 'Estar ebrio o bajo drogas', TRUE),
(37, 'Estar triste', FALSE),
(37, 'No desayunar', FALSE),
(37, 'No tener copiloto', FALSE);

-- Pregunta 38 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(38, '¿Qué se exige para vehículos de carga pesada?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 38 (ID generado = 38)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(38, 'Cumplir límites de peso y señalización', TRUE),
(38, 'Tener luces LED', FALSE),
(38, 'Color blanco', FALSE),
(38, 'Claxon fuerte', FALSE);

-- Pregunta 39 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(39, '¿Qué indica una señal azul con una H?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 39 (ID generado = 39)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(39, 'Cercanía de un hospital', TRUE),
(39, 'Helipuerto', FALSE),
(39, 'Hidrante', FALSE),
(39, 'Horario limitado', FALSE);

-- Pregunta 40 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(40, '¿Qué establece la ley sobre transporte escolar?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 40 (ID generado = 40)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(40, 'Vehículos adecuados y conductores certificados', TRUE),
(40, 'Solo se requiere pintura amarilla', FALSE),
(40, 'Debe tener radio', FALSE),
(40, 'Puede ir sobrecargado', FALSE);

-- Pregunta 41 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(41, '¿Qué debe hacer un conductor tras un accidente con heridos?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 41 (ID generado = 41)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(41, 'Prestar auxilio y llamar a emergencias', TRUE),
(41, 'Huir para evitar líos', FALSE),
(41, 'Esperar a familiares', FALSE),
(41, 'Tomar fotos y subirlas', FALSE);

-- Pregunta 42 (Señales)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(42, '¿Qué indica una línea blanca discontinua?', 'multiple_choice', 'Señales');

-- Opciones para pregunta 42 (ID generado = 42)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(42, 'Puede cambiar de carril si es seguro', TRUE),
(42, 'Debe detenerse', FALSE),
(42, 'Zona de parqueo', FALSE),
(42, 'Paso peatonal obligatorio', FALSE);

-- Pregunta 43 (Escenarios)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(43, '¿Qué documento prueba que un vehículo es legal?', 'multiple_choice', 'Escenarios');

-- Opciones para pregunta 43 (ID generado = 43)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(43, 'Tarjeta de circulación', TRUE),
(43, 'Factura del mecánico', FALSE),
(43, 'Carné del piloto', FALSE),
(43, 'Multa anterior', FALSE);

-- Pregunta 44 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(44, '¿Qué sistema reduce la velocidad del vehículo?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 44 (ID generado = 44)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(44, 'Frenos', TRUE),
(44, 'Dirección hidráulica', FALSE),
(44, 'Claxon', FALSE),
(44, 'Radiador', FALSE);

-- Pregunta 45 (Simulaciones)
INSERT INTO question (question_id, question_text, question_type, category) VALUES
(45, '¿Qué riesgo hay al manejar con llantas lisas?', 'multiple_choice', 'Simulaciones');

-- Opciones para pregunta 45 (ID generado = 45)
INSERT INTO answer_option (question_id, option_text, is_correct) VALUES
(45, 'Mayor probabilidad de derrape y accidentes', TRUE),
(45, 'Mejor tracción', FALSE),
(45, 'Gasto reducido', FALSE),
(45, 'Mejor visibilidad', FALSE);

-- Ajustar la secuencia por si usás IDs fijos
SELECT setval('question_question_id_seq', (SELECT MAX(question_id) FROM question));

-- =========================
-- ENLACE A EXÁMENES (NIVELES)
-- =========================
-- Crea exámenes por nivel (basico/intermedio/avanzado)
INSERT INTO exam (exam_id, title, description, difficulty_level, points_awarded) VALUES
  (1, 'Examen Básico de Seguridad Vial',     'Evalúa conocimientos básicos de tránsito', 'basico',     20),
  (2, 'Examen Intermedio de Seguridad Vial', 'Situaciones prácticas y criterio',         'intermedio', 25),
  (3, 'Examen Avanzado de Seguridad Vial',   'Normativa y casos complejos',              'avanzado',   30)
ON CONFLICT (exam_id) DO NOTHING;

-- Vincular preguntas a su nivel (formato directo)
-- Básico: 1–5, 16–25
INSERT INTO exam_question (exam_id, question_id) VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),
(1,16),(1,17),(1,18),(1,19),(1,20),
(1,21),(1,22),(1,23),(1,24),(1,25);

-- Intermedio: 6–10, 26–35
INSERT INTO exam_question (exam_id, question_id) VALUES
(2,6),(2,7),(2,8),(2,9),(2,10),
(2,26),(2,27),(2,28),(2,29),(2,30),
(2,31),(2,32),(2,33),(2,34),(2,35);

-- Avanzado: 11–15, 36–45
INSERT INTO exam_question (exam_id, question_id) VALUES
(3,11),(3,12),(3,13),(3,14),(3,15),
(3,36),(3,37),(3,38),(3,39),(3,40),
(3,41),(3,42),(3,43),(3,44),(3,45);

-- =========================
-- VISTA PARA EL FRONT (lvl 1/2/3)
-- =========================
CREATE OR REPLACE VIEW v_questions_front AS
SELECT
  q.question_id AS id,
  q.question_text AS text,
  CASE
    WHEN q.category = 'Señales'::question_category_enum      THEN 'señales'
    WHEN q.category = 'Simulaciones'::question_category_enum THEN 'simulaciones'
    WHEN q.category = 'Escenarios'::question_category_enum   THEN 'escenarios'
  END AS cat,
  CASE
    WHEN e.difficulty_level IN ('simple','basic','basico','básico') THEN 1
    WHEN e.difficulty_level IN ('intermedio')                        THEN 2
    WHEN e.difficulty_level IN ('advanced','avanzado')               THEN 3
    ELSE 0
  END AS lvl
FROM question q
LEFT JOIN exam_question eq ON eq.question_id = q.question_id
LEFT JOIN exam e           ON e.exam_id      = eq.exam_id;


-- =========================
-- VALIDACIONES RÁPIDAS
-- =========================
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

COMMIT;
