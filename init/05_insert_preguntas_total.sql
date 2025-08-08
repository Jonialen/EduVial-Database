-- Pregunta 1: Artículo 82 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué obligación tiene el conductor respecto al uso del cinturón de seguridad?',
  'Seguridad vial',
  'Básico',
  82
);

-- Opciones para pregunta 1 (ID generado = 1)
INSERT INTO opt (qid, txt, correct) VALUES
(1, 'Debe usarlo en todo momento mientras conduce', TRUE),
(1, 'Solo debe usarlo en carreteras', FALSE),
(1, 'Es opcional si maneja a baja velocidad', FALSE),
(1, 'Solo es obligatorio para pasajeros', FALSE);


-- Pregunta 2: Artículo 35 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuál es la velocidad máxima permitida en zonas escolares?',
  'Seguridad vial',
  'Básico',
  35
);

-- Opciones para pregunta 2 (ID generado = 2)
INSERT INTO opt (qid, txt, correct) VALUES
(2, '25 kilómetros por hora', TRUE),
(2, '40 kilómetros por hora', FALSE),
(2, '60 kilómetros por hora', FALSE),
(2, 'No hay límite', FALSE);


-- Pregunta 3: Artículo 22 - Peatones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Quién tiene prioridad en un paso de cebra sin semáforo?',
  'Peatones',
  'Básico',
  22
);

-- Opciones para pregunta 3 (ID generado = 3)
INSERT INTO opt (qid, txt, correct) VALUES
(3, 'El peatón', TRUE),
(3, 'El vehículo más grande', FALSE),
(3, 'El conductor más rápido', FALSE),
(3, 'El que toque la bocina primero', FALSE);


-- Pregunta 4: Artículo 47 - Normas generales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer un conductor al escuchar una sirena de emergencia?',
  'Normas generales',
  'Básico',
  47
);

-- Opciones para pregunta 4 (ID generado = 4)
INSERT INTO opt (qid, txt, correct) VALUES
(4, 'Ceder el paso inmediatamente', TRUE),
(4, 'Aumentar la velocidad', FALSE),
(4, 'Ignorarla si va apurado', FALSE),
(4, 'Encender sus luces', FALSE);


-- Pregunta 5: Artículo 14 - Documentación
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué documento debe portar todo conductor?',
  'Documentación',
  'Básico',
  14
);

-- Opciones para pregunta 5 (ID generado = 5)
INSERT INTO opt (qid, txt, correct) VALUES
(5, 'Licencia de conducir vigente', TRUE),
(5, 'Pasaporte', FALSE),
(5, 'Factura del vehículo', FALSE),
(5, 'Certificado médico', FALSE);


-- Pregunta 6: Artículo 68 - Normas generales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué indica la prioridad de paso en una intersección?',
  'Normas generales',
  'Intermedio',
  68
);

-- Opciones para pregunta 6 (ID generado = 6)
INSERT INTO opt (qid, txt, correct) VALUES
(6, 'Que el conductor debe ceder el paso según las reglas establecidas', TRUE),
(6, 'Que el conductor puede acelerar para cruzar primero', FALSE),
(6, 'Que solo los peatones tienen prioridad', FALSE),
(6, 'Que puede seguir sin detenerse si no hay semáforo', FALSE);


-- Pregunta 7: Artículo 56 - Circulación
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué significa una línea amarilla continua en la vía?',
  'Circulación',
  'Intermedio',
  56
);

-- Opciones para pregunta 7 (ID generado = 7)
INSERT INTO opt (qid, txt, correct) VALUES
(7, 'Prohibido adelantar', TRUE),
(7, 'Zona de carga y descarga', FALSE),
(7, 'Estacionamiento permitido', FALSE),
(7, 'Cruce peatonal', FALSE);


-- Pregunta 8: Artículo 72 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuándo se permite el uso de luces altas?',
  'Seguridad vial',
  'Intermedio',
  72
);

-- Opciones para pregunta 8 (ID generado = 8)
INSERT INTO opt (qid, txt, correct) VALUES
(8, 'En carretera y cuando no haya otros vehículos cerca', TRUE),
(8, 'En la ciudad todo el tiempo', FALSE),
(8, 'Siempre de noche', FALSE),
(8, 'Solo en lluvia', FALSE);


-- Pregunta 9: Artículo 90 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer si sufre un desperfecto mecánico en carretera?',
  'Seguridad vial',
  'Intermedio',
  90
);

-- Opciones para pregunta 9 (ID generado = 9)
INSERT INTO opt (qid, txt, correct) VALUES
(9, 'Colocar triángulos y señalizar adecuadamente', TRUE),
(9, 'Esperar dentro del vehículo sin señalizar', FALSE),
(9, 'Empujar el carro sin ayuda', FALSE),
(9, 'Llamar a familiares', FALSE);


-- Pregunta 10: Artículo 61 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuál es la función del cinturón de seguridad?',
  'Seguridad vial',
  'Intermedio',
  61
);

-- Opciones para pregunta 10 (ID generado = 10)
INSERT INTO opt (qid, txt, correct) VALUES
(10, 'Proteger al conductor y pasajeros en caso de accidente', TRUE),
(10, 'Adornar el asiento', FALSE),
(10, 'Aumentar la velocidad', FALSE),
(10, 'Ayudar a frenar', FALSE);


-- Pregunta 11: Artículo 75 - Circulación
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿En qué situación está prohibido adelantar otro vehículo según la ley?',
  'Circulación',
  'Avanzado',
  75
);

-- Opciones para pregunta 11 (ID generado = 11)
INSERT INTO opt (qid, txt, correct) VALUES
(11, 'En curvas o zonas con visibilidad reducida', TRUE),
(11, 'Solo si el otro vehículo va a alta velocidad', FALSE),
(11, 'En cualquier vía pavimentada', FALSE),
(11, 'Cuando el vehículo de atrás lo indica', FALSE);


-- Pregunta 12: Artículo 105 - Infracciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuál es la sanción por conducir bajo efectos del alcohol?',
  'Infracciones',
  'Avanzado',
  105
);

-- Opciones para pregunta 12 (ID generado = 12)
INSERT INTO opt (qid, txt, correct) VALUES
(12, 'Multa, suspensión de licencia y posible prisión', TRUE),
(12, 'Solo una multa', FALSE),
(12, 'Advertencia verbal', FALSE),
(12, 'No tiene sanción', FALSE);


-- Pregunta 13: Artículo 132 - Vehículos
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe tener un vehículo para transportar personas?',
  'Vehículos',
  'Avanzado',
  132
);

-- Opciones para pregunta 13 (ID generado = 13)
INSERT INTO opt (qid, txt, correct) VALUES
(13, 'Asientos adecuados y medidas de seguridad', TRUE),
(13, 'Solo ventanas', FALSE),
(13, 'Radio funcional', FALSE),
(13, 'Tanque lleno', FALSE);


-- Pregunta 14: Artículo 149 - Autoridades
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué autoridad puede detener a un vehículo en circulación?',
  'Autoridades',
  'Avanzado',
  149
);

-- Opciones para pregunta 14 (ID generado = 14)
INSERT INTO opt (qid, txt, correct) VALUES
(14, 'Policía Nacional Civil o PMT', TRUE),
(14, 'Cualquier ciudadano', FALSE),
(14, 'El juez de paz', FALSE),
(14, 'El mecánico de confianza', FALSE);


-- Pregunta 15: Artículo 158 - Motociclistas
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuándo es obligatorio usar casco en motocicleta?',
  'Motociclistas',
  'Avanzado',
  158
);

-- Opciones para pregunta 15 (ID generado = 15)
INSERT INTO opt (qid, txt, correct) VALUES
(15, 'Siempre, tanto conductor como pasajero', TRUE),
(15, 'Solo de noche', FALSE),
(15, 'Solo en carretera', FALSE),
(15, 'Solo si hay lluvia', FALSE);

-- Pregunta 16: Artículo 33 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué color indica precaución en los semáforos?',
  'Seguridad vial',
  'Básico',
  33
);

-- Opciones para pregunta 16 (ID generado = 16)
INSERT INTO opt (qid, txt, correct) VALUES
(16, 'Amarillo', TRUE),
(16, 'Rojo', FALSE),
(16, 'Verde', FALSE),
(16, 'Azul', FALSE);


-- Pregunta 17: Artículo 40 - Normas generales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer un conductor antes de cambiar de carril?',
  'Normas generales',
  'Básico',
  40
);

-- Opciones para pregunta 17 (ID generado = 17)
INSERT INTO opt (qid, txt, correct) VALUES
(17, 'Indicar con luces direccionales', TRUE),
(17, 'Tocar la bocina', FALSE),
(17, 'Esperar que otros se muevan', FALSE),
(17, 'Mirar por el retrovisor solamente', FALSE);


-- Pregunta 18: Artículo 12 - Peatones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Quién puede usar pasos peatonales elevados?',
  'Peatones',
  'Básico',
  12
);

-- Opciones para pregunta 18 (ID generado = 18)
INSERT INTO opt (qid, txt, correct) VALUES
(18, 'Todos los peatones', TRUE),
(18, 'Solo personas con discapacidad', FALSE),
(18, 'Solo niños', FALSE),
(18, 'Solo adultos mayores', FALSE);


-- Pregunta 19: Artículo 19 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué significa una señal de alto?',
  'Seguridad vial',
  'Básico',
  19
);

-- Opciones para pregunta 19 (ID generado = 19)
INSERT INTO opt (qid, txt, correct) VALUES
(19, 'Debe detenerse completamente', TRUE),
(19, 'Puede disminuir velocidad solamente', FALSE),
(19, 'Solo aplica si hay tráfico', FALSE),
(19, 'Avanzar lentamente', FALSE);


-- Pregunta 20: Artículo 52 - Normas generales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué hacer si hay un accidente sin heridos?',
  'Normas generales',
  'Básico',
  52
);

-- Opciones para pregunta 20 (ID generado = 20)
INSERT INTO opt (qid, txt, correct) VALUES
(20, 'Mover los vehículos si es posible', TRUE),
(20, 'Esperar sin mover nada', FALSE),
(20, 'Llamar al seguro y bloquear el paso', FALSE),
(20, 'Tocar la bocina para llamar la atención', FALSE);


-- Pregunta 21: Artículo 88 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué vehículos tienen prioridad de paso?',
  'Seguridad vial',
  'Básico',
  88
);

-- Opciones para pregunta 21 (ID generado = 21)
INSERT INTO opt (qid, txt, correct) VALUES
(21, 'Ambulancias, bomberos y policía con sirena activa', TRUE),
(21, 'Taxis y buses', FALSE),
(21, 'Camiones grandes', FALSE),
(21, 'Carros nuevos', FALSE);


-- Pregunta 22: Artículo 31 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué significa una luz verde intermitente?',
  'Seguridad vial',
  'Básico',
  31
);

-- Opciones para pregunta 22 (ID generado = 22)
INSERT INTO opt (qid, txt, correct) VALUES
(22, 'Avanzar con precaución', TRUE),
(22, 'Prohibido avanzar', FALSE),
(22, 'Gire obligatoriamente', FALSE),
(22, 'Cruce peatonal', FALSE);


-- Pregunta 23: Artículo 21 - Normas generales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué se debe revisar antes de iniciar la conducción?',
  'Normas generales',
  'Básico',
  21
);

-- Opciones para pregunta 23 (ID generado = 23)
INSERT INTO opt (qid, txt, correct) VALUES
(23, 'Luces, frenos y neumáticos', TRUE),
(23, 'Radio, clima y sonido', FALSE),
(23, 'Número de pasajeros', FALSE),
(23, 'Velocidad máxima', FALSE);


-- Pregunta 24: Artículo 67 - Peatones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué indica una señal con un peatón?',
  'Peatones',
  'Básico',
  67
);

-- Opciones para pregunta 24 (ID generado = 24)
INSERT INTO opt (qid, txt, correct) VALUES
(24, 'Paso peatonal', TRUE),
(24, 'Cruce de animales', FALSE),
(24, 'Zona de carga', FALSE),
(24, 'Parada de bus', FALSE);


-- Pregunta 25: Artículo 39 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer en una zona escolar?',
  'Seguridad vial',
  'Básico',
  39
);

-- Opciones para pregunta 25 (ID generado = 25)
INSERT INTO opt (qid, txt, correct) VALUES
(25, 'Reducir velocidad y estar atento a niños', TRUE),
(25, 'Acelerar para salir rápido', FALSE),
(25, 'Tocar bocina', FALSE),
(25, 'Encender luces altas', FALSE);


-- Pregunta 26: Artículo 108 - Normas generales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué hacer si un semáforo está apagado?',
  'Normas generales',
  'Intermedio',
  108
);

-- Opciones para pregunta 26 (ID generado = 26)
INSERT INTO opt (qid, txt, correct) VALUES
(26, 'Aplicar las normas de prioridad y precaución', TRUE),
(26, 'Ignorar y seguir', FALSE),
(26, 'Tocar bocina y avanzar', FALSE),
(26, 'Esperar que alguien dirija', FALSE);


-- Pregunta 27: Artículo 98 - Circulación
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué indica una doble línea amarilla?',
  'Circulación',
  'Intermedio',
  98
);

-- Opciones para pregunta 27 (ID generado = 27)
INSERT INTO opt (qid, txt, correct) VALUES
(27, 'Prohibido adelantar en ambos sentidos', TRUE),
(27, 'Cruce peatonal doble', FALSE),
(27, 'Zona escolar', FALSE),
(27, 'Límite de velocidad', FALSE);


-- Pregunta 28: Artículo 141 - Infracciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué pasa si no se respetan los límites de velocidad?',
  'Infracciones',
  'Intermedio',
  141
);

-- Opciones para pregunta 28 (ID generado = 28)
INSERT INTO opt (qid, txt, correct) VALUES
(28, 'Puede causar accidentes y recibir sanciones', TRUE),
(28, 'Nada si es de noche', FALSE),
(28, 'Solo afecta en carretera', FALSE),
(28, 'Es legal si hay poco tráfico', FALSE);


-- Pregunta 29: Artículo 77 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué tipo de luces deben usarse en neblina?',
  'Seguridad vial',
  'Intermedio',
  77
);

-- Opciones para pregunta 29 (ID generado = 29)
INSERT INTO opt (qid, txt, correct) VALUES
(29, 'Luces bajas o antiniebla', TRUE),
(29, 'Luces altas', FALSE),
(29, 'Luces intermitentes', FALSE),
(29, 'Solo luces de parqueo', FALSE);


-- Pregunta 30: Artículo 130 - Vehículos
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué es el mantenimiento preventivo?',
  'Vehículos',
  'Intermedio',
  130
);

-- Opciones para pregunta 30 (ID generado = 30)
INSERT INTO opt (qid, txt, correct) VALUES
(30, 'Revisar el vehículo antes de que falle', TRUE),
(30, 'Arreglar solo cuando se arruina', FALSE),
(30, 'Lavar el carro', FALSE),
(30, 'Cambiar pintura', FALSE);


-- Pregunta 31: Artículo 116 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuál es el rol del espejo retrovisor?',
  'Seguridad vial',
  'Intermedio',
  116
);

-- Opciones para pregunta 31 (ID generado = 31)
INSERT INTO opt (qid, txt, correct) VALUES
(31, 'Ver vehículos detrás', TRUE),
(31, 'Verse el cabello', FALSE),
(31, 'Leer mensajes', FALSE),
(31, 'Observar el copiloto', FALSE);


-- Pregunta 32: Artículo 55 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué indica una señal triangular con borde rojo?',
  'Seguridad vial',
  'Intermedio',
  55
);

-- Opciones para pregunta 32 (ID generado = 32)
INSERT INTO opt (qid, txt, correct) VALUES
(32, 'Advertencia de peligro', TRUE),
(32, 'Estacionamiento permitido', FALSE),
(32, 'Cruce obligatorio', FALSE),
(32, 'Fin de vía', FALSE);


-- Pregunta 33: Artículo 65 - Normas generales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué hacer en un cruce sin señalización?',
  'Normas generales',
  'Intermedio',
  65
);

-- Opciones para pregunta 33 (ID generado = 33)
INSERT INTO opt (qid, txt, correct) VALUES
(33, 'Ceder el paso según prioridad', TRUE),
(33, 'Acelerar primero', FALSE),
(33, 'Esperar a que alguien pase', FALSE),
(33, 'Tocar bocina', FALSE);


-- Pregunta 34: Artículo 119 - Peatones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué hacer si un peatón cruza inesperadamente?',
  'Peatones',
  'Intermedio',
  119
);

-- Opciones para pregunta 34 (ID generado = 34)
INSERT INTO opt (qid, txt, correct) VALUES
(34, 'Reducir velocidad y ceder el paso', TRUE),
(34, 'Acelerar para evitar frenar', FALSE),
(34, 'Ignorar y seguir', FALSE),
(34, 'Pitar fuerte', FALSE);


-- Pregunta 35: Artículo 109 - Ciclistas
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué indica una señal con bicicleta?',
  'Ciclistas',
  'Intermedio',
  109
);

-- Opciones para pregunta 35 (ID generado = 35)
INSERT INTO opt (qid, txt, correct) VALUES
(35, 'Ciclovía o cruce de ciclistas', TRUE),
(35, 'Parqueo de motos', FALSE),
(35, 'Zona escolar', FALSE),
(35, 'Fin de vía', FALSE);


-- Pregunta 36: Artículo 159 - Transporte
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué medidas debe tomar el conductor de transporte público?',
  'Transporte',
  'Avanzado',
  159
);

-- Opciones para pregunta 36 (ID generado = 36)
INSERT INTO opt (qid, txt, correct) VALUES
(36, 'Revisar frenos, luces y tener licencia específica', TRUE),
(36, 'Tener uniforme', FALSE),
(36, 'Usar solo efectivo', FALSE),
(36, 'Llevar música alta', FALSE);


-- Pregunta 37: Artículo 198 - Licencias
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué condiciones impiden manejar legalmente?',
  'Licencias',
  'Avanzado',
  198
);

-- Opciones para pregunta 37 (ID generado = 37)
INSERT INTO opt (qid, txt, correct) VALUES
(37, 'Estar ebrio o bajo drogas', TRUE),
(37, 'Estar triste', FALSE),
(37, 'No desayunar', FALSE),
(37, 'No tener copiloto', FALSE);


-- Pregunta 38: Artículo 164 - Vehículos
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué se exige para vehículos de carga pesada?',
  'Vehículos',
  'Avanzado',
  164
);

-- Opciones para pregunta 38 (ID generado = 38)
INSERT INTO opt (qid, txt, correct) VALUES
(38, 'Cumplir límites de peso y señalización', TRUE),
(38, 'Tener luces LED', FALSE),
(38, 'Color blanco', FALSE),
(38, 'Claxon fuerte', FALSE);


-- Pregunta 39: Artículo 173 - Emergencia
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué indica una señal azul con una H?',
  'Emergencia',
  'Avanzado',
  173
);

-- Opciones para pregunta 39 (ID generado = 39)
INSERT INTO opt (qid, txt, correct) VALUES
(39, 'Cercanía de un hospital', TRUE),
(39, 'Helipuerto', FALSE),
(39, 'Hidrante', FALSE),
(39, 'Horario limitado', FALSE);


-- Pregunta 40: Artículo 184 - Transporte
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué establece la ley sobre transporte escolar?',
  'Transporte',
  'Avanzado',
  184
);

-- Opciones para pregunta 40 (ID generado = 40)
INSERT INTO opt (qid, txt, correct) VALUES
(40, 'Vehículos adecuados y conductores certificados', TRUE),
(40, 'Solo se requiere pintura amarilla', FALSE),
(40, 'Debe tener radio', FALSE),
(40, 'Puede ir sobrecargado', FALSE);


-- Pregunta 41: Artículo 187 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer un conductor tras un accidente con heridos?',
  'Seguridad vial',
  'Avanzado',
  187
);

-- Opciones para pregunta 41 (ID generado = 41)
INSERT INTO opt (qid, txt, correct) VALUES
(41, 'Prestar auxilio y llamar a emergencias', TRUE),
(41, 'Huir para evitar líos', FALSE),
(41, 'Esperar a familiares', FALSE),
(41, 'Tomar fotos y subirlas', FALSE);


-- Pregunta 42: Artículo 195 - Circulación
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué indica una línea blanca discontinua?',
  'Circulación',
  'Avanzado',
  195
);

-- Opciones para pregunta 42 (ID generado = 42)
INSERT INTO opt (qid, txt, correct) VALUES
(42, 'Puede cambiar de carril si es seguro', TRUE),
(42, 'Debe detenerse', FALSE),
(42, 'Zona de parqueo', FALSE),
(42, 'Paso peatonal obligatorio', FALSE);


-- Pregunta 43: Artículo 200 - Documentación
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué documento prueba que un vehículo es legal?',
  'Documentación',
  'Avanzado',
  200
);

-- Opciones para pregunta 43 (ID generado = 43)
INSERT INTO opt (qid, txt, correct) VALUES
(43, 'Tarjeta de circulación', TRUE),
(43, 'Factura del mecánico', FALSE),
(43, 'Carné del piloto', FALSE),
(43, 'Multa anterior', FALSE);


-- Pregunta 44: Artículo 161 - Mecánica
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué sistema reduce la velocidad del vehículo?',
  'Mecánica',
  'Avanzado',
  161
);

-- Opciones para pregunta 44 (ID generado = 44)
INSERT INTO opt (qid, txt, correct) VALUES
(44, 'Frenos', TRUE),
(44, 'Dirección hidráulica', FALSE),
(44, 'Claxon', FALSE),
(44, 'Radiador', FALSE);


-- Pregunta 45: Artículo 178 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué riesgo hay al manejar con llantas lisas?',
  'Seguridad vial',
  'Avanzado',
  178
);

-- Opciones para pregunta 45 (ID generado = 45)
INSERT INTO opt (qid, txt, correct) VALUES
(45, 'Mayor probabilidad de derrape y accidentes', TRUE),
(45, 'Mejor tracción', FALSE),
(45, 'Gasto reducido', FALSE),
(45, 'Mejor visibilidad', FALSE);

--señales
INSERT INTO question (question_id, question_text, question_type, category)
VALUES (1, '¿Qué indica una señal triangular con borde rojo?', 'multiple_choice', 'Señales');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (2, '¿Cuál es el significado de una señal de círculo rojo con fondo blanco?', 'multiple_choice', 'Señales');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (3, '¿Qué acción corresponde ante una señal de alto (STOP)?', 'multiple_choice', 'Señales');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (4, '¿Qué representa una señal amarilla en forma de rombo?', 'multiple_choice', 'Señales');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (5, '¿Qué significa una señal azul con una “P” blanca?', 'multiple_choice', 'Señales');

--Simulaciones
INSERT INTO question (question_id, question_text, question_type, category)
VALUES (6, '¿Qué debe hacer si un peatón cruza repentinamente en una zona sin paso de cebra?', 'multiple_choice', 'Simulaciones');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (7, '¿Cómo debe actuar si un ciclista invade su carril?', 'multiple_choice', 'Simulaciones');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (8, 'Si falla el semáforo en una intersección, ¿qué debe hacer?', 'multiple_choice', 'Simulaciones');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (9, '¿Qué se recomienda hacer si se revienta una llanta mientras conduce?', 'multiple_choice', 'Simulaciones');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (10, '¿Qué hacer si ve humo saliendo del motor mientras conduce?', 'multiple_choice', 'Simulaciones');


--Escenarios
INSERT INTO question (question_id, question_text, question_type, category)
VALUES (11, '¿Qué documentos debe portar obligatoriamente un conductor en Guatemala?', 'multiple_choice', 'Escenarios');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (12, '¿Cuál es la sanción por conducir sin licencia vigente?', 'multiple_choice', 'Escenarios');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (13, '¿Quién tiene prioridad en una intersección sin señalización?', 'multiple_choice', 'Escenarios');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (14, '¿Cuál es el límite de alcohol permitido en sangre para conducir legalmente?', 'multiple_choice', 'Escenarios');

INSERT INTO question (question_id, question_text, question_type, category)
VALUES (15, '¿Qué requisitos debe cumplir un vehículo para circular legalmente?', 'multiple_choice', 'Escenarios');

