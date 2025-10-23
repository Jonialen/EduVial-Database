-- Pregunta 1: Artículo 82 - Seguridad vial
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué obligación tiene el conductor respecto al uso del cinturón de seguridad?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '82')
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
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '35')
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
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '22')
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
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '47')
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
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '14')
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
  'Simulaciones',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '68')
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
  'Señales',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '56')
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
  'Escenarios',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '72')
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
  'Simulaciones',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '90')
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
  'Escenarios',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '61')
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
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '75')
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
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '105')
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
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '132')
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
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '149')
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
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '158')
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
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '33')
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
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '40')
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
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '12')
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
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '19')
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
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '52')
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
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '88')
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
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '31')
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
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '21')
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
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '67')
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
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '39')
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
  'Simulaciones',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '108')
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
  'Señales',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '98')
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
  'Escenarios',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '141')
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
  'Simulaciones',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '77')
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
  'Simulaciones',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '130')
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
  'Simulaciones',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '116')
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
  'Señales',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '55')
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
  'Simulaciones',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '65')
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
  'Simulaciones',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '119')
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
  'Señales',
  'Intermedio',
  (SELECT id FROM lawarticle WHERE artnum = '109')
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
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '159')
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
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '198')
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
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '164')
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
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '173')
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
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '184')
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
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '187')
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
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '195')
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
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '200')
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
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '161')
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
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '178')
);

-- Opciones para pregunta 45 (ID generado = 45)
INSERT INTO opt (qid, txt, correct) VALUES
(45, 'Mayor probabilidad de derrape y accidentes', TRUE),
(45, 'Mejor tracción', FALSE),
(45, 'Gasto reducido', FALSE),
(45, 'Mejor visibilidad', FALSE);

-- Pregunta 46: Artículo 1 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuál es el propósito principal de la normativa de tránsito?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '1')
);

-- Opciones para pregunta 46 (ID generado = 46)
INSERT INTO opt (qid, txt, correct) VALUES
(46, 'Proteger la vida y seguridad de usuarios de la vía', TRUE),
(46, 'Aumentar la recaudación por multas', FALSE),
(46, 'Favorecer a conductores profesionales', FALSE),
(46, 'Permitir circular sin restricciones', FALSE);


-- Pregunta 47: Artículo 2 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿A quiénes aplica la normativa de tránsito en la vía pública?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '2')
);

-- Opciones para pregunta 47 (ID generado = 47)
INSERT INTO opt (qid, txt, correct) VALUES
(47, 'A conductores, pasajeros y peatones', TRUE),
(47, 'Solo a conductores con licencia profesional', FALSE),
(47, 'Exclusivamente a vehículos particulares', FALSE),
(47, 'Únicamente a peatones en zonas urbanas', FALSE);


-- Pregunta 48: Artículo 3 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Cuando una señal de tránsito y una indicación de un agente difieren, ¿a cuál se debe obedecer?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '3')
);

-- Opciones para pregunta 48 (ID generado = 48)
INSERT INTO opt (qid, txt, correct) VALUES
(48, 'A la indicación del agente', TRUE),
(48, 'A la señal vertical', FALSE),
(48, 'Al semáforo solamente', FALSE),
(48, 'A ninguna si no hay tráfico', FALSE);


-- Pregunta 49: Artículo 4 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué documento básico debe portar siempre el conductor para acreditar su autorización de manejo?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '4')
);

-- Opciones para pregunta 49 (ID generado = 49)
INSERT INTO opt (qid, txt, correct) VALUES
(49, 'Licencia de conducir vigente', TRUE),
(49, 'Recibo de compra del vehículo', FALSE),
(49, 'Contrato de seguro en original', FALSE),
(49, 'Tarjeta de circulación provisional', FALSE);


-- Pregunta 50: Artículo 5 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué responsabilidad general tiene el conductor respecto de las normas de tránsito?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '5')
);

-- Opciones para pregunta 50 (ID generado = 50)
INSERT INTO opt (qid, txt, correct) VALUES
(50, 'Conocerlas y cumplirlas', TRUE),
(50, 'Cumplirlas solo en horarios hábiles', FALSE),
(50, 'Conocerlas pero no necesariamente cumplirlas', FALSE),
(50, 'Cumplir solo las de su municipio', FALSE);


-- Pregunta 51: Artículo 6 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Si la vía está obstruida por un accidente, ¿qué debe hacer el conductor al aproximarse?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '6')
);

-- Opciones para pregunta 51 (ID generado = 51)
INSERT INTO opt (qid, txt, correct) VALUES
(51, 'Reducir velocidad y acatar señalamiento o indicaciones', TRUE),
(51, 'Acelerar para pasar rápido', FALSE),
(51, 'Tocar la bocina y seguir', FALSE),
(51, 'Detenerse en medio del carril', FALSE);


-- Pregunta 52: Artículo 7 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué prioridad tienen los vehículos de emergencia con señalización activa?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '7')
);

-- Opciones para pregunta 52 (ID generado = 52)
INSERT INTO opt (qid, txt, correct) VALUES
(52, 'Tienen prioridad de paso', TRUE),
(52, 'Deben ceder a los autobuses', FALSE),
(52, 'Solo en intersecciones con semáforo en verde', FALSE),
(52, 'Ninguna prioridad especial', FALSE);


-- Pregunta 53: Artículo 8 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué condición básica debe mantener el vehículo antes de circular?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '8')
);

-- Opciones para pregunta 53 (ID generado = 53)
INSERT INTO opt (qid, txt, correct) VALUES
(53, 'Estar en buenas condiciones mecánicas y de seguridad', TRUE),
(53, 'Tener vidrios polarizados', FALSE),
(53, 'Contar con bocina de aire reforzada', FALSE),
(53, 'Portar llantas de competición', FALSE);


-- Pregunta 54: Artículo 9 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer un conductor antes de iniciar la marcha desde el estacionamiento?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '9')
);

-- Opciones para pregunta 54 (ID generado = 54)
INSERT INTO opt (qid, txt, correct) VALUES
(54, 'Señalizar y verificar que la maniobra sea segura', TRUE),
(54, 'Salir sin señalizar si no hay peatones', FALSE),
(54, 'Arrancar tocando bocina', FALSE),
(54, 'Usar solo luces altas', FALSE);


-- Pregunta 55: Artículo 10 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Ante una señal de ALTO (STOP), ¿qué debe hacer el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '10')
);

-- Opciones para pregunta 55 (ID generado = 55)
INSERT INTO opt (qid, txt, correct) VALUES
(55, 'Detenerse completamente y ceder el paso', TRUE),
(55, 'Reducir y cruzar si no hay vehículos', FALSE),
(55, 'Continuar si el carril está libre', FALSE),
(55, 'Tocar bocina y seguir', FALSE);


-- Pregunta 56: Artículo 11 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué luz debe usarse preferentemente al conducir de noche en zonas urbanas iluminadas?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '11')
);

-- Opciones para pregunta 56 (ID generado = 56)
INSERT INTO opt (qid, txt, correct) VALUES
(56, 'Luces bajas (cruce)', TRUE),
(56, 'Luces altas en todo momento', FALSE),
(56, 'Luz intermitente de emergencia', FALSE),
(56, 'Solo luces de estacionamiento', FALSE);


-- Pregunta 57: Artículo 13 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer el conductor al aproximarse a un cruce peatonal marcado?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '13')
);

-- Opciones para pregunta 57 (ID generado = 57)
INSERT INTO opt (qid, txt, correct) VALUES
(57, 'Reducir velocidad y ceder el paso al peatón', TRUE),
(57, 'Acelerar para liberar el cruce', FALSE),
(57, 'Usar bocina para advertir y pasar', FALSE),
(57, 'Ignorar el cruce si no hay semáforo', FALSE);


-- Pregunta 58: Artículo 15 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuál es la conducta correcta al cambiar de carril?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '15')
);

-- Opciones para pregunta 58 (ID generado = 58)
INSERT INTO opt (qid, txt, correct) VALUES
(58, 'Señalizar previamente y verificar el ángulo muerto', TRUE),
(58, 'Cambiar sin señalizar si el carril está libre', FALSE),
(58, 'Señalizar solo después de cambiar', FALSE),
(58, 'Pisar la línea continua para adelantar', FALSE);


-- Pregunta 59: Artículo 16 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'En una rotonda, ¿quién tiene la prioridad de paso por regla general?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '16')
);

-- Opciones para pregunta 59 (ID generado = 59)
INSERT INTO opt (qid, txt, correct) VALUES
(59, 'El que ya circula dentro de la rotonda', TRUE),
(59, 'El que entra por la derecha', FALSE),
(59, 'El vehículo de mayor tamaño', FALSE),
(59, 'Quien toque más la bocina', FALSE);


-- Pregunta 60: Artículo 17 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué distancia de seguridad debe mantener un conductor respecto al vehículo de adelante?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '17')
);

-- Opciones para pregunta 60 (ID generado = 60)
INSERT INTO opt (qid, txt, correct) VALUES
(60, 'Una distancia que permita detenerse con seguridad', TRUE),
(60, 'Media longitud del vehículo propio', FALSE),
(60, 'La misma distancia en ciudad y carretera', FALSE),
(60, 'Ninguna si se conduce despacio', FALSE);


-- Pregunta 61: Artículo 18 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Si un peatón está cruzando correctamente por un paso de cebra, ¿qué debe hacer el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '18')
);

-- Opciones para pregunta 61 (ID generado = 61)
INSERT INTO opt (qid, txt, correct) VALUES
(61, 'Detenerse y permitirle cruzar', TRUE),
(61, 'Acelerar para pasar antes', FALSE),
(61, 'Tocar la bocina para que apure el paso', FALSE),
(61, 'Pasar por el carril contrario', FALSE);


-- Pregunta 62: Artículo 20 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al aproximarse a un paso a nivel (vía férrea) sin barrera, ¿qué precaución es obligatoria?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '20')
);

-- Opciones para pregunta 62 (ID generado = 62)
INSERT INTO opt (qid, txt, correct) VALUES
(62, 'Reducir la velocidad y comprobar que no se aproxime un tren', TRUE),
(62, 'Cruzar rápido sin detenerse', FALSE),
(62, 'Usar luces altas y bocina', FALSE),
(62, 'Detenerse solo si viene un tren visible', FALSE);


-- Pregunta 63: Artículo 23 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuál es la conducta correcta ante un bus escolar detenido recogiendo o dejando niños?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '23')
);

-- Opciones para pregunta 63 (ID generado = 63)
INSERT INTO opt (qid, txt, correct) VALUES
(63, 'Detenerse y no rebasar hasta que sea seguro', TRUE),
(63, 'Rebasar por el carril contrario rápidamente', FALSE),
(63, 'Tocar bocina para que avance', FALSE),
(63, 'Pasar por la cuneta', FALSE);


-- Pregunta 64: Artículo 24 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer el conductor antes de realizar un giro a la derecha?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '24')
);

-- Opciones para pregunta 64 (ID generado = 64)
INSERT INTO opt (qid, txt, correct) VALUES
(64, 'Señalizar con anticipación y pegarse al lado derecho', TRUE),
(64, 'Girar sin señalizar si no hay vehículos', FALSE),
(64, 'Tomar el carril izquierdo y cruzar', FALSE),
(64, 'Detenerse por completo siempre', FALSE);


-- Pregunta 65: Artículo 25 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuál es la regla general para rebasar a otro vehículo en carretera?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '25')
);

-- Opciones para pregunta 65 (ID generado = 65)
INSERT INTO opt (qid, txt, correct) VALUES
(65, 'Rebasar por la izquierda cuando la línea lo permita y sea seguro', TRUE),
(65, 'Rebasar por la derecha en cualquier caso', FALSE),
(65, 'Rebasar en curvas si no viene nadie', FALSE),
(65, 'Rebasar en puentes para ahorrar tiempo', FALSE);
