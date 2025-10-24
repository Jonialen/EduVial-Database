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
  'Básico',
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
  'Básico',
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
  'Básico',
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
  'Básico',
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
  'Básico',
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
  'Avanzado',
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
  'Avanzado',
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
  'Avanzado',
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
  'Avanzado',
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
  'Avanzado',
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
  'Avanzado',
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
  'Avanzado',
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
  'Avanzado',
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
  'Avanzado',
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
  'Avanzado',
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
  'Señales',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Señales',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Simulaciones',
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
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '25')
);

-- Opciones para pregunta 65 (ID generado = 65)
INSERT INTO opt (qid, txt, correct) VALUES
(65, 'Rebasar por la izquierda cuando la línea lo permita y sea seguro', TRUE),
(65, 'Rebasar por la derecha en cualquier caso', FALSE),
(65, 'Rebasar en curvas si no viene nadie', FALSE),
(65, 'Rebasar en puentes para ahorrar tiempo', FALSE);

-- Pregunta 66: Artículo 26 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué maniobra está prohibida en presencia de línea central continua?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '26')
);

-- Opciones para pregunta 66 (ID generado = 66)
INSERT INTO opt (qid, txt, correct) VALUES
(66, 'Invadir el carril contrario para adelantar', TRUE),
(66, 'Circular a velocidad constante', FALSE),
(66, 'Encender luces de cruce', FALSE),
(66, 'Reducir la velocidad', FALSE);


-- Pregunta 67: Artículo 27 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al estacionar en pendiente, ¿qué medida preventiva básica se recomienda?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '27')
);

-- Opciones para pregunta 67 (ID generado = 67)
INSERT INTO opt (qid, txt, correct) VALUES
(67, 'Orientar las ruedas hacia el borde y usar freno de mano', TRUE),
(67, 'Dejar el vehículo en neutro', FALSE),
(67, 'Apagar luces y salir sin más', FALSE),
(67, 'Mantener el motor encendido', FALSE);


-- Pregunta 68: Artículo 28 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer el conductor antes de abrir las puertas del vehículo hacia la vía?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '28')
);

-- Opciones para pregunta 68 (ID generado = 68)
INSERT INTO opt (qid, txt, correct) VALUES
(68, 'Verificar que no se aproxima nadie y hacerlo con precaución', TRUE),
(68, 'Abrir rápidamente para bajar primero', FALSE),
(68, 'Solo abrir si el vehículo está en doble fila', FALSE),
(68, 'Dejar la puerta abierta para reservar espacio', FALSE);


-- Pregunta 69: Artículo 29 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Si un semáforo cambia a amarillo, ¿cuál es la acción recomendada?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '29')
);

-- Opciones para pregunta 69 (ID generado = 69)
INSERT INTO opt (qid, txt, correct) VALUES
(69, 'Prepararse para detenerse con seguridad', TRUE),
(69, 'Acelerar para cruzar antes del rojo', FALSE),
(69, 'Pitar y continuar', FALSE),
(69, 'Detenerse en medio del cruce', FALSE);


-- Pregunta 70: Artículo 30 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué deben hacer los peatones al cruzar una vía según la regla básica de seguridad?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '30')
);

-- Opciones para pregunta 70 (ID generado = 70)
INSERT INTO opt (qid, txt, correct) VALUES
(70, 'Usar pasos peatonales y observar ambos sentidos', TRUE),
(70, 'Cruzar por cualquier punto si no hay tráfico', FALSE),
(70, 'Correr entre vehículos detenidos', FALSE),
(70, 'Cruzar con el teléfono sin mirar', FALSE);

-- Pregunta 71: Artículo 32 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer el conductor antes de iniciar un adelantamiento?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '32')
);
-- Opciones para pregunta 71 (ID generado = 71)
INSERT INTO opt (qid, txt, correct) VALUES
(71, 'Asegurarse de que la maniobra puede hacerse con seguridad y señalizarla', TRUE),
(71, 'Acelerar sin mirar espejos', FALSE),
(71, 'Cambiar de carril sin señalizar si no hay tráfico', FALSE),
(71, 'Rebasar en curvas para ganar tiempo', FALSE);


-- Pregunta 72: Artículo 34 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al aproximarse a una intersección sin control, ¿qué debe priorizar el conductor?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '34')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(72, 'Reducir la velocidad y ceder el paso cuando corresponda', TRUE),
(72, 'Tocar bocina y pasar primero', FALSE),
(72, 'Cruzar sin reducir si no ve vehículos', FALSE),
(72, 'Parar en medio del cruce para observar', FALSE);


-- Pregunta 73: Artículo 36 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuándo es obligatorio usar las luces del vehículo durante el día?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '36')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(73, 'En condiciones de baja visibilidad (lluvia, niebla, túneles)', TRUE),
(73, 'Nunca, solo de noche', FALSE),
(73, 'Solo en carreteras de dos carriles', FALSE),
(73, 'Únicamente al estacionar', FALSE);


-- Pregunta 74: Artículo 37 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al circular detrás de una motocicleta, ¿qué debe considerar el conductor?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '37')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(74, 'Mantener mayor distancia de seguridad por su inestabilidad', TRUE),
(74, 'Rebasarla muy cerca para que acelere', FALSE),
(74, 'Usar luces altas para que lo note', FALSE),
(74, 'Pitar constantemente', FALSE);


-- Pregunta 75: Artículo 38 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Si un agente de tránsito ordena detenerse, ¿qué debe hacer el conductor?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '38')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(75, 'Detenerse de forma segura y seguir instrucciones', TRUE),
(75, 'Ignorar la orden si tiene prisa', FALSE),
(75, 'Continuar y justificarse después', FALSE),
(75, 'Estacionar en doble fila y bajar del vehículo', FALSE);


-- Pregunta 76: Artículo 41 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué prioridad tienen los peatones en los cruces señalizados?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '41')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(76, 'Prioridad de paso cuando cruzan correctamente', TRUE),
(76, 'Ninguna si el semáforo está en verde para vehículos', FALSE),
(76, 'Solo en zonas escolares', FALSE),
(76, 'Solo de noche', FALSE);


-- Pregunta 77: Artículo 42 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al detenerse en un semáforo en rojo, ¿dónde debe quedar el vehículo?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '42')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(77, 'Detrás de la línea de detención o del cruce peatonal', TRUE),
(77, 'Sobre el paso peatonal si no hay espacio', FALSE),
(77, 'Dentro de la intersección', FALSE),
(77, 'Donde resulte más conveniente', FALSE);


-- Pregunta 78: Artículo 43 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuándo se permite girar a la derecha con el semáforo en rojo?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '43')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(78, 'Solo si está permitido mediante señal y después de detenerse', TRUE),
(78, 'Siempre, si no hay tráfico', FALSE),
(78, 'Nunca, bajo ninguna circunstancia', FALSE),
(78, 'Solo si toca la bocina y enciende intermitentes', FALSE);


-- Pregunta 79: Artículo 44 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer el conductor cuando sus luces altas encandilan a otro usuario?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '44')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(79, 'Cambiar a luces bajas inmediatamente', TRUE),
(79, 'Mantenerlas para mejorar su visibilidad', FALSE),
(79, 'Pitar para advertir', FALSE),
(79, 'Apagarlas por completo', FALSE);


-- Pregunta 80: Artículo 45 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'En una vía con dos carriles por sentido, ¿cuál es el carril habitual para circular?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '45')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(80, 'El carril derecho, usando el izquierdo para adelantar', TRUE),
(80, 'Siempre el carril izquierdo', FALSE),
(80, 'El que tenga menos baches', FALSE),
(80, 'El que prefiera el conductor', FALSE);


-- Pregunta 81: Artículo 46 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al incorporarse desde un carril de aceleración, ¿qué debe hacer el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '46')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(81, 'Ajustar la velocidad y ceder el paso al tráfico de la vía principal', TRUE),
(81, 'Detenerse al final del carril siempre', FALSE),
(81, 'Entrar de inmediato aunque no haya espacio', FALSE),
(81, 'Usar solo luces altas', FALSE);


-- Pregunta 82: Artículo 47 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer el conductor si su vehículo presenta una falla mecánica en vía pública?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '47')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(82, 'Detenerse en lugar seguro, señalizar y solicitar ayuda si es necesario', TRUE),
(82, 'Continuar hasta su destino a baja velocidad', FALSE),
(82, 'Abandonar el vehículo en el carril', FALSE),
(82, 'Solo encender las luces altas', FALSE);


-- Pregunta 83: Artículo 48 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Cuando el tránsito está detenido, ¿qué conducta debe evitar el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '48')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(83, 'Invadir intersecciones bloqueando cruces peatonales', TRUE),
(83, 'Mantener distancia prudente', FALSE),
(83, 'Respetar los carriles señalizados', FALSE),
(83, 'Usar intermitentes cuando sea necesario', FALSE);


-- Pregunta 84: Artículo 49 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuál es la obligación del conductor respecto al uso de dispositivos móviles al conducir?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '49')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(84, 'Abstenerse de usarlos en la conducción si distraen', TRUE),
(84, 'Usarlos solo cuando el tráfico es lento', FALSE),
(84, 'Permitido con una mano en el volante', FALSE),
(84, 'Permitido si el volumen está bajo', FALSE);


-- Pregunta 85: Artículo 50 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Cuando un vehículo pretende incorporarse desde una entrada de garaje a la vía, ¿qué debe hacer?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '50')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(85, 'Ceder el paso a los usuarios que ya circulan por la vía', TRUE),
(85, 'Salir rápidamente para ganar el espacio', FALSE),
(85, 'Pitar y avanzar sin mirar', FALSE),
(85, 'Esperar a que alguien le ceda el paso con luces', FALSE);


-- Pregunta 86: Artículo 51 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'En pasos escolares, ¿qué acción es obligatoria para los conductores?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '51')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(86, 'Reducir la velocidad y extremar precauciones', TRUE),
(86, 'Rebasar buses escolares detenidos', FALSE),
(86, 'Usar bocina como advertencia principal', FALSE),
(86, 'Detenerse solo si hay inspector', FALSE);


-- Pregunta 87: Artículo 52 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué norma general aplica para el uso del claxon (bocina)?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '52')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(87, 'Usarlo solo para evitar accidentes y de forma moderada', TRUE),
(87, 'Usarlo para exigir prioridad', FALSE),
(87, 'Usarlo de noche para señalar su presencia', FALSE),
(87, 'Usarlo en túneles constantemente', FALSE);


-- Pregunta 88: Artículo 53 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué indica una línea amarilla continua junto al borde de la vía?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '53')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(88, 'Prohibición de estacionar o detenerse según señalamiento', TRUE),
(88, 'Carril exclusivo para adelantar', FALSE),
(88, 'Zona de carga y descarga obligatoria', FALSE),
(88, 'Permiso de estacionar con intermitentes', FALSE);


-- Pregunta 89: Artículo 54 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Cuando un peatón con movilidad reducida cruza la vía, ¿qué debe hacer el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '54')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(89, 'Detenerse y permitir el cruce con seguridad', TRUE),
(89, 'Pitar para que se apure', FALSE),
(89, 'Adelantar por el otro carril', FALSE),
(89, 'Seguir porque tiene preferencia el vehículo', FALSE);


-- Pregunta 90: Artículo 55 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué acción es correcta al circular por una zona residencial?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '55')
);
-- Opciones
INSERT INTO opt (qid, txt, correct) VALUES
(90, 'Reducir la velocidad y estar atento a peatones y niños', TRUE),
(90, 'Usar luces altas para ver mejor', FALSE),
(90, 'Pitar al doblar cada esquina', FALSE),
(90, 'Adelantar para evitar demoras', FALSE);

-- Pregunta 91: Artículo 56 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Antes de iniciar un cruce en intersección, ¿qué debe confirmar el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '56')
);
INSERT INTO opt (qid, txt, correct) VALUES
(91, 'Que puede completar la maniobra sin bloquear la intersección', TRUE),
(91, 'Que puede detenerse en medio del cruce si es necesario', FALSE),
(91, 'Que tiene preferencia por ser vehículo particular', FALSE),
(91, 'Que el semáforo esté en amarillo fijo', FALSE);


-- Pregunta 92: Artículo 57 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué precaución básica debe tener el conductor al retroceder?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '57')
);
INSERT INTO opt (qid, txt, correct) VALUES
(92, 'Mirar espejos, puntos ciegos y señalizar la maniobra', TRUE),
(92, 'Pitar y retroceder rápidamente', FALSE),
(92, 'Retroceder por carriles principales', FALSE),
(92, 'Hacerlo sin señalizar si es de noche', FALSE);


-- Pregunta 93: Artículo 58 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Cuándo es obligatorio el uso de intermitentes (direccionales)?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '58')
);
INSERT INTO opt (qid, txt, correct) VALUES
(93, 'Para girar, cambiar de carril o incorporarse', TRUE),
(93, 'Solo para estacionar en doble fila', FALSE),
(93, 'Únicamente en carretera', FALSE),
(93, 'Nunca de noche', FALSE);


-- Pregunta 94: Artículo 59 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'En vías de doble sentido, ¿dónde debe circular el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '59')
);
INSERT INTO opt (qid, txt, correct) VALUES
(94, 'Por su derecha, salvo maniobras permitidas', TRUE),
(94, 'Por el centro para ver mejor', FALSE),
(94, 'Por la izquierda si va rápido', FALSE),
(94, 'Por el carril de buses si está vacío', FALSE);


-- Pregunta 95: Artículo 60 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Si una señal temporal de obras reduce el límite de velocidad, ¿qué debe hacer el conductor?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '60')
);
INSERT INTO opt (qid, txt, correct) VALUES
(95, 'Adecuar la velocidad al nuevo límite y extremar precaución', TRUE),
(95, 'Ignorarla si no ve trabajadores', FALSE),
(95, 'Pasar rápido para salir del área', FALSE),
(95, 'Usar luces altas y bocina', FALSE);


-- Pregunta 96: Artículo 61 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué obligación tiene el conductor respecto al uso de dispositivos de retención infantil?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '61')
);
INSERT INTO opt (qid, txt, correct) VALUES
(96, 'Asegurar a menores con sistemas apropiados a talla y peso', TRUE),
(96, 'Solo usar cinturón del adulto', FALSE),
(96, 'Llevarlos en el asiento delantero', FALSE),
(96, 'Cargarlos en brazos con cuidado', FALSE);


-- Pregunta 97: Artículo 62 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Cuando un vehículo se incorpora desde una zona de estacionamiento a la vía, ¿qué debe hacer?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '62')
);
INSERT INTO opt (qid, txt, correct) VALUES
(97, 'Ceder el paso a quienes ya circulan por la vía', TRUE),
(97, 'Entrar primero si enciende intermitente', FALSE),
(97, 'Pitar y avanzar', FALSE),
(97, 'Ocupar dos carriles para incorporarse', FALSE);


-- Pregunta 98: Artículo 63 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer un peatón antes de bajar de un vehículo estacionado junto a la vía?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '63')
);
INSERT INTO opt (qid, txt, correct) VALUES
(98, 'Verificar que no se aproximen vehículos o ciclistas', TRUE),
(98, 'Abrir la puerta de golpe', FALSE),
(98, 'Caminar por la calzada', FALSE),
(98, 'Bajar por el lado de la vía siempre', FALSE);


-- Pregunta 99: Artículo 64 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'En zonas de niebla o lluvia intensa, ¿qué luces deben utilizarse principalmente?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '64')
);
INSERT INTO opt (qid, txt, correct) VALUES
(99, 'Luces bajas y, si procede, antiniebla', TRUE),
(99, 'Luces altas permanentes', FALSE),
(99, 'Solo luces de estacionamiento', FALSE),
(99, 'Sin luces para no encandilar', FALSE);


-- Pregunta 100: Artículo 65 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué distancia lateral mínima debe mantener al adelantar a un ciclista cuando la vía lo permita?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '65')
);
INSERT INTO opt (qid, txt, correct) VALUES
(100, 'Una distancia prudente que evite riesgo (regla del metro y medio como referencia)', TRUE),
(100, 'Cualquier distancia si va lento', FALSE),
(100, 'Pegado para que no se desvíe', FALSE),
(100, 'Solo tocar bocina', FALSE);


-- Pregunta 101: Artículo 66 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Si una ambulancia se aproxima con señales luminosas y sonoras, ¿qué debe hacer el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '66')
);
INSERT INTO opt (qid, txt, correct) VALUES
(101, 'Facilitar el paso, cediendo prioridad de forma segura', TRUE),
(101, 'Seguir delante a mayor velocidad', FALSE),
(101, 'Bloquear el carril izquierdo', FALSE),
(101, 'Detenerse en medio del carril', FALSE);


-- Pregunta 102: Artículo 67 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué conducta debe observar el conductor al acercarse a pasos a desnivel o puentes angostos?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '67')
);
INSERT INTO opt (qid, txt, correct) VALUES
(102, 'Reducir velocidad y respetar prioridad señalizada', TRUE),
(102, 'Acelerar para pasar primero', FALSE),
(102, 'Circular por el centro del puente', FALSE),
(102, 'Rebasar dentro del puente', FALSE);


-- Pregunta 103: Artículo 68 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Respecto a cargas en el vehículo, ¿qué es obligatorio?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '68')
);
INSERT INTO opt (qid, txt, correct) VALUES
(103, 'Asegurarlas para que no se desprendan ni comprometan la visibilidad', TRUE),
(103, 'Transportarlas con puertas abiertas', FALSE),
(103, 'Sobresalir lateralmente sin señalización', FALSE),
(103, 'Cubrir placas para protegerlas', FALSE);


-- Pregunta 104: Artículo 69 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué documentos debe portar el conductor del vehículo además de su licencia?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '69')
);
INSERT INTO opt (qid, txt, correct) VALUES
(104, 'Tarjeta de circulación y otros exigidos por la autoridad', TRUE),
(104, 'Contrato de compraventa', FALSE),
(104, 'Factura original siempre', FALSE),
(104, 'Permiso municipal de estacionamiento', FALSE);


-- Pregunta 105: Artículo 70 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Sobre el uso de casco en motociclistas, ¿qué es correcto?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '70')
);
INSERT INTO opt (qid, txt, correct) VALUES
(105, 'Conductor y pasajero deben usar casco adecuado y abrochado', TRUE),
(105, 'Solo el conductor debe usar casco', FALSE),
(105, 'No es necesario en tramos cortos', FALSE),
(105, 'Es opcional en zonas urbanas', FALSE);


-- Pregunta 106: Artículo 71 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué está prohibido respecto a la capacidad de pasajeros en un vehículo?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '71')
);
INSERT INTO opt (qid, txt, correct) VALUES
(106, 'Exceder el número de plazas autorizadas', TRUE),
(106, 'Llevar niños en asiento trasero', FALSE),
(106, 'Portar cinturones funcionales', FALSE),
(106, 'Acomodar equipaje en la cajuela', FALSE);


-- Pregunta 107: Artículo 72 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Si el vehículo queda inmovilizado en la vía por avería, ¿qué debe colocar el conductor?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '72')
);
INSERT INTO opt (qid, txt, correct) VALUES
(107, 'Dispositivos de señalización (triángulos) a la distancia reglamentaria', TRUE),
(107, 'Conos improvisados con objetos', FALSE),
(107, 'Nada si enciende luces altas', FALSE),
(107, 'Una tela roja en el parabrisas', FALSE);


-- Pregunta 108: Artículo 73 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué conducta es correcta al cruzar una zona escolar señalizada?',
  'Señales  ',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '73')
);
INSERT INTO opt (qid, txt, correct) VALUES
(108, 'Reducir velocidad y estar atento a menores y personal de apoyo', TRUE),
(108, 'Acelerar para salir rápido', FALSE),
(108, 'Usar la bocina como señal obligatoria', FALSE),
(108, 'Rebasar si el bus escolar está detenido', FALSE);


-- Pregunta 109: Artículo 74 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Respecto al estacionamiento en zonas señalizadas como prohibidas, ¿qué aplica?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '74')
);
INSERT INTO opt (qid, txt, correct) VALUES
(109, 'No estacionar ni detenerse salvo causa de fuerza mayor', TRUE),
(109, 'Estacionar con intermitentes', FALSE),
(109, 'Permitirlo por menos de 5 minutos', FALSE),
(109, 'Solo prohibido de noche', FALSE);


-- Pregunta 110: Artículo 75 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué debe hacer el conductor antes de abrir el capó en la vía por una emergencia menor?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '75')
);
INSERT INTO opt (qid, txt, correct) VALUES
(110, 'Detenerse fuera de la calzada, señalizar y asegurar el vehículo', TRUE),
(110, 'Hacerlo en el carril más cercano', FALSE),
(110, 'Pedir a otros que rodeen el vehículo', FALSE),
(110, 'Apagar luces y permanecer en la calzada', FALSE);


-- Pregunta 111: Artículo 76 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Cuando un peatón inicia el cruce con luz peatonal en verde, ¿qué debe hacer el conductor?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '76')
);
INSERT INTO opt (qid, txt, correct) VALUES
(111, 'Detenerse y respetar su prioridad', TRUE),
(111, 'Acelerar para cruzar primero', FALSE),
(111, 'Pitar para advertir', FALSE),
(111, 'Pasar por el carril contrario', FALSE);


-- Pregunta 112: Artículo 77 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué está prohibido respecto al uso de audífonos y objetos que limiten la audición del conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '77')
);
INSERT INTO opt (qid, txt, correct) VALUES
(112, 'Usarlos de manera que impidan o dificulten percibir el entorno', TRUE),
(112, 'Usarlos con volumen bajo', FALSE),
(112, 'Usarlos solo en autopistas', FALSE),
(112, 'Usarlos en un oído únicamente', FALSE);


-- Pregunta 113: Artículo 78 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Sobre transporte de personas en la parte posterior abierta de pick-up, ¿qué regla general aplica?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '78')
);
INSERT INTO opt (qid, txt, correct) VALUES
(113, 'Evitar transportar personas salvo excepciones reglamentadas y con medidas de seguridad', TRUE),
(113, 'Permitido sin restricciones', FALSE),
(113, 'Permitido para tramos cortos', FALSE),
(113, 'Permitido si van sentados en el borde', FALSE);


-- Pregunta 114: Artículo 79 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Si la calzada tiene material suelto (grava/arena) por mantenimiento, ¿qué debe hacer el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '79')
);
INSERT INTO opt (qid, txt, correct) VALUES
(114, 'Reducir velocidad y aumentar distancia', TRUE),
(114, 'Acelerar para superar el tramo', FALSE),
(114, 'Usar solo freno de mano', FALSE),
(114, 'Circular por el arcén a alta velocidad', FALSE);


-- Pregunta 115: Artículo 80 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué norma básica rige el uso de luces intermitentes de emergencia (balizas)?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '80')
);
INSERT INTO opt (qid, txt, correct) VALUES
(115, 'Activarlas cuando el vehículo constituye obstáculo o emergencia', TRUE),
(115, 'Usarlas para estacionar en doble fila', FALSE),
(115, 'Encenderlas para pedir prioridad', FALSE),
(115, 'Llevarlas siempre encendidas con lluvia', FALSE);


-- Pregunta 116: Artículo 81 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Sobre la revisión del estado del vehículo, ¿qué es recomendable antes de un viaje?',
  'Simulaciones',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '81')
);
INSERT INTO opt (qid, txt, correct) VALUES
(116, 'Comprobar frenos, luces, llantas y niveles', TRUE),
(116, 'Solo llenar combustible', FALSE),
(116, 'Lavar el vehículo', FALSE),
(116, 'Desactivar cinturones para mayor comodidad', FALSE);


-- Pregunta 117: Artículo 82 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué obligación tiene el conductor respecto al uso del cinturón de seguridad?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '82')
);
INSERT INTO opt (qid, txt, correct) VALUES
(117, 'Debe usarlo en todo momento mientras conduce', TRUE),
(117, 'Solo debe usarlo en carreteras', FALSE),
(117, 'Es opcional si maneja a baja velocidad', FALSE),
(117, 'Solo es obligatorio para pasajeros', FALSE);


-- Pregunta 118: Artículo 83 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'En presencia de un paso de peatones no regulado, ¿qué conducta corresponde?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '83')
);
INSERT INTO opt (qid, txt, correct) VALUES
(118, 'Ceder el paso al peatón que ya está cruzando', TRUE),
(118, 'Pitar para exigir prioridad', FALSE),
(118, 'Pasar por el carril contrario', FALSE),
(118, 'Acelerar para cruzar primero', FALSE);


-- Pregunta 119: Artículo 84 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Sobre el transporte de mascotas en el vehículo, ¿qué principio de seguridad aplica?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '84')
);
INSERT INTO opt (qid, txt, correct) VALUES
(119, 'Deben ir aseguradas sin interferir la conducción', TRUE),
(119, 'Pueden ir sueltas en el tablero', FALSE),
(119, 'Pueden ir en el regazo del conductor', FALSE),
(119, 'Pueden asomar la cabeza fuera siempre', FALSE);


-- Pregunta 120: Artículo 85 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al detenerse por congestión antes de una intersección, ¿qué debe evitar el conductor?',
  'Escenarios',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '85')
);
INSERT INTO opt (qid, txt, correct) VALUES
(120, 'Quedar dentro del cruce bloqueándolo', TRUE),
(120, 'Mantenerse detrás de la línea de detención', FALSE),
(120, 'Respetar el paso peatonal', FALSE),
(120, 'Dejar libre la rotonda', FALSE);

-- Pregunta 121: Artículo 86 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué precaución debes tomar al circular detrás de un vehículo pesado en una pendiente con lluvia?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '86')
);
INSERT INTO opt (qid, txt, correct) VALUES
(121, 'Aumentar distancia y evitar adelantamientos riesgosos hasta tener plena visibilidad', TRUE),
(121, 'Rebasarlo de inmediato usando luces altas', FALSE),
(121, 'Pegar el vehículo para “protegerte” del viento', FALSE),
(121, 'Tocar bocina para que acelere', FALSE);


-- Pregunta 122: Artículo 87 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Semáforo intermitente en amarillo: ¿qué indica?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '87')
);
INSERT INTO opt (qid, txt, correct) VALUES
(122, 'Precaución y reducción de velocidad antes de cruzar', TRUE),
(122, 'Alto total obligatorio', FALSE),
(122, 'Prioridad para quien viene por la derecha', FALSE),
(122, 'Que la luz no tiene efecto', FALSE);


-- Pregunta 123: Artículo 88 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Quién tiene prioridad de paso con señales luminosas y sonoras activas?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '88')
);
INSERT INTO opt (qid, txt, correct) VALUES
(123, 'Ambulancias, bomberos y policía en emergencia', TRUE),
(123, 'Transporte colectivo urbano', FALSE),
(123, 'Taxis con pasaje', FALSE),
(123, 'Vehículos particulares en autopista', FALSE);


-- Pregunta 124: Artículo 89 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Con aguacero fuerte, el auto tiende a patinar. ¿Qué haces?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '89')
);
INSERT INTO opt (qid, txt, correct) VALUES
(124, 'Bajar velocidad y aumentar distancia; maniobras suaves, sin frenar brusco', TRUE),
(124, 'Frenar a fondo para recuperar control', FALSE),
(124, 'Acelerar para “superar” el agua', FALSE),
(124, 'Apagar luces para no encandilar', FALSE);


-- Pregunta 125: Artículo 90 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Te quedas varada en carretera por avería: primera acción correcta.',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '90')
);
INSERT INTO opt (qid, txt, correct) VALUES
(125, 'Encender intermitentes y colocar triángulos de seguridad', TRUE),
(125, 'Esperar dentro del carril sin señalizar', FALSE),
(125, 'Empujar el auto por el carril central', FALSE),
(125, 'Dejar el vehículo detenido en el carril', FALSE);


-- Pregunta 126: Artículo 91 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Encuentras animales sueltos en la vía. ¿Qué procede?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '91')
);
INSERT INTO opt (qid, txt, correct) VALUES
(126, 'Reducir velocidad y evitar maniobras bruscas', TRUE),
(126, 'Acelerar para que se aparten', FALSE),
(126, 'Usar bocina continua y luces altas', FALSE),
(126, 'Rebasar por el arcén rápidamente', FALSE);


-- Pregunta 127: Artículo 92 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un agente ordena lo contrario a la señal fija. ¿A quién obedeces?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '92')
);
INSERT INTO opt (qid, txt, correct) VALUES
(127, 'A la indicación del agente de tránsito', TRUE),
(127, 'A la señal vertical únicamente', FALSE),
(127, 'Al semáforo sin atender al agente', FALSE),
(127, 'A ninguna si no hay tráfico', FALSE);


-- Pregunta 128: Artículo 93 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'El auto derrapa en curva. ¿Cómo reaccionas para recuperar trayectoria?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '93')
);
INSERT INTO opt (qid, txt, correct) VALUES
(128, 'Sin frenar brusco; corregir suave hacia el sentido del derrape', TRUE),
(128, 'Frenar con fuerza y girar contrario', FALSE),
(128, 'Soltar volante y dejarlo detenerse solo', FALSE),
(128, 'Apagar motor para estabilizar', FALSE);


-- Pregunta 129: Artículo 94 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Antes de adelantar en carretera, ¿qué debes confirmar?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '94')
);
INSERT INTO opt (qid, txt, correct) VALUES
(129, 'Visibilidad suficiente, vía libre y señalización previa', TRUE),
(129, 'Que el de adelante frene para darte espacio', FALSE),
(129, 'Que la línea central sea continua', FALSE),
(129, 'Que no vengan motos (los demás no importan)', FALSE);


-- Pregunta 130: Artículo 95 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Documento mínimo que debes presentar para acreditar circulación del vehículo ante control vial:',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '95')
);
INSERT INTO opt (qid, txt, correct) VALUES
(130, 'Tarjeta de circulación vigente', TRUE),
(130, 'Factura original siempre a bordo', FALSE),
(130, 'Recibo del seguro', FALSE),
(130, 'Permiso municipal de parqueo', FALSE);


-- Pregunta 131: Artículo 96 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Previo a iniciar marcha, ¿qué revisar del sistema de frenos?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '96')
);
INSERT INTO opt (qid, txt, correct) VALUES
(131, 'Ausencia de fugas y respuesta adecuada del pedal', TRUE),
(131, 'Solo ver que las llantas tengan “buen dibujo”', FALSE),
(131, 'Probar freno a fondo en plena carretera', FALSE),
(131, 'Confiar solo en el freno de mano', FALSE);


-- Pregunta 132: Artículo 97 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Con niebla densa, ¿qué luces debes usar?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '97')
);
INSERT INTO opt (qid, txt, correct) VALUES
(132, 'Luces bajas y, si aplica, antiniebla', TRUE),
(132, 'Luces altas permanentes', FALSE),
(132, 'Solo luces de estacionamiento', FALSE),
(132, 'Sin luces para no encandilar', FALSE);


-- Pregunta 133: Artículo 98 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Doble línea amarilla en el centro de la vía significa:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '98')
);
INSERT INTO opt (qid, txt, correct) VALUES
(133, 'Prohibido adelantar en ambos sentidos', TRUE),
(133, 'Carril reversible', FALSE),
(133, 'Zona escolar', FALSE),
(133, 'Estacionamiento permitido', FALSE);


-- Pregunta 134: Artículo 99 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al girar en una intersección, ¿qué prioridad debes respetar?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '99')
);
INSERT INTO opt (qid, txt, correct) VALUES
(134, 'Peatones y vehículos que circulan correctamente', TRUE),
(134, 'El vehículo de mayor tamaño', FALSE),
(134, 'Quien toque más la bocina', FALSE),
(134, 'Quien venga más rápido', FALSE);


-- Pregunta 135: Artículo 100 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Conduces somnolienta de noche. ¿Qué haces para reducir el riesgo?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '100')
);
INSERT INTO opt (qid, txt, correct) VALUES
(135, 'Detenerte a descansar; la somnolencia aumenta el tiempo de reacción', TRUE),
(135, 'Bajar la ventana y acelerar', FALSE),
(135, 'Poner música alta y seguir igual', FALSE),
(135, 'Usar luces altas a todos', FALSE);


-- Pregunta 136: Artículo 101 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Línea amarilla continua junto al borde generalmente indica:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '101')
);
INSERT INTO opt (qid, txt, correct) VALUES
(136, 'Restricción/prohibición de detenerse o estacionar', TRUE),
(136, 'Carril exclusivo para adelantar', FALSE),
(136, 'Zona de carga obligatoria', FALSE),
(136, 'Vía preferente para motocicletas', FALSE);


-- Pregunta 137: Artículo 102 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'En un paso a nivel sin barrera, ¿qué conducta es correcta?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '102')
);
INSERT INTO opt (qid, txt, correct) VALUES
(137, 'Reducir velocidad y asegurarse de que no viene tren', TRUE),
(137, 'Acelerar para cruzar primero', FALSE),
(137, 'Detenerse sobre las vías para mirar', FALSE),
(137, 'Cruzar con intermitentes de emergencia encendidos', FALSE);


-- Pregunta 138: Artículo 103 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Cambio de carril en vía rápida: pasos mínimos correctos.',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '103')
);
INSERT INTO opt (qid, txt, correct) VALUES
(138, 'Señalizar, revisar espejos y puntos ciegos, y ejecutar con espacio suficiente', TRUE),
(138, 'Señalizar después del cambio', FALSE),
(138, 'Solo revisar espejo central', FALSE),
(138, 'Pisar línea continua si no hay tráfico', FALSE);


-- Pregunta 139: Artículo 104 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Flecha verde en semáforo de carril indica:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '104')
);
INSERT INTO opt (qid, txt, correct) VALUES
(139, 'Carril habilitado en ese sentido', TRUE),
(139, 'Alto total', FALSE),
(139, 'Prohibición de giro', FALSE),
(139, 'Carril exclusivo para buses', FALSE);


-- Pregunta 140: Artículo 105 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Vas a remolcar un vehículo: verificación básica antes de iniciar.',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '105')
);
INSERT INTO opt (qid, txt, correct) VALUES
(140, 'Dispositivo de enganche y señalización adecuados; no exceder límites', TRUE),
(140, 'Cualquier lazo sirve', FALSE),
(140, 'Remolcar aunque el otro no tenga frenos', FALSE),
(140, 'Cubrir la placa del remolcado', FALSE);


-- Pregunta 141: Artículo 106 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Vehículo detenido en subida por congestión: ¿cómo te posicionas?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '106')
);
INSERT INTO opt (qid, txt, correct) VALUES
(141, 'Mantener distancia para evitar colisión por retroceso', TRUE),
(141, 'Pegarme al parachoques del de adelante', FALSE),
(141, 'Ir por el arcén para avanzar', FALSE),
(141, 'Usar luces altas para apurar', FALSE);


-- Pregunta 142: Artículo 107 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de ceda el paso obliga a:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '107')
);
INSERT INTO opt (qid, txt, correct) VALUES
(142, 'Ceder prioridad a quienes circulan por la vía preferente', TRUE),
(142, 'Detenerse siempre hasta cero', FALSE),
(142, 'Avanzar si no hay peatones', FALSE),
(142, 'Tocar bocina y pasar', FALSE);


-- Pregunta 143: Artículo 108 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Incorporación desde carril de aceleración: regla clave.',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '108')
);
INSERT INTO opt (qid, txt, correct) VALUES
(143, 'Ajustar velocidad y ceder a la vía principal si es necesario', TRUE),
(143, 'Detenerse al final del carril siempre', FALSE),
(143, 'Entrar forzando al tráfico a frenar', FALSE),
(143, 'Usar solo luces altas', FALSE);


-- Pregunta 144: Artículo 109 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Luz roja fija: ¿dónde debe quedar detenido el vehículo?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '109')
);
INSERT INTO opt (qid, txt, correct) VALUES
(144, 'Antes de la línea de detención o cruce peatonal', TRUE),
(144, 'Dentro de la intersección para “ganar tiempo”', FALSE),
(144, 'Sobre el paso peatonal si hay espacio', FALSE),
(144, 'Después del semáforo', FALSE);


-- Pregunta 145: Artículo 110 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Explota una llanta en marcha. ¿Cuál es la maniobra más segura?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '110')
);
INSERT INTO opt (qid, txt, correct) VALUES
(145, 'Sujetar firme el volante, desacelerar progresivo y salir a zona segura', TRUE),
(145, 'Frenar a fondo y girar de inmediato', FALSE),
(145, 'Apagar el motor en seco', FALSE),
(145, 'Soltar volante y dejarlo ir recto', FALSE);

-- Pregunta 146: Artículo 111 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al salir de un estacionamiento en reversa hacia una vía con tránsito fluido, ¿cómo ejecutas la maniobra con seguridad?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '111')
);
INSERT INTO opt (qid, txt, correct) VALUES
(146, 'Señalizo, verifico espejos y puntos ciegos y cedo el paso hasta tener espacio suficiente', TRUE),
(146, 'Entro rápido para que los demás frenen', FALSE),
(146, 'Solo miro la cámara trasera y avanzo', FALSE),
(146, 'Me apoyo en la bocina para abrirme paso', FALSE);


-- Pregunta 147: Artículo 112 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Una flecha roja en el semáforo de carril indica que ese carril está:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '112')
);
INSERT INTO opt (qid, txt, correct) VALUES
(147, 'Cerrado a la circulación en ese sentido', TRUE),
(147, 'Exclusivo para giros a la derecha', FALSE),
(147, 'Libre mientras no venga nadie', FALSE),
(147, 'Reservado para motocicletas', FALSE);


-- Pregunta 148: Artículo 113 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al aproximarte a una intersección con visibilidad reducida, ¿qué conducta corresponde?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '113')
);
INSERT INTO opt (qid, txt, correct) VALUES
(148, 'Reducir velocidad, acercarse con precaución y estar lista para ceder el paso', TRUE),
(148, 'Cruzar rápido para evitar quedar en medio', FALSE),
(148, 'Usar luces altas y pitar para pasar', FALSE),
(148, 'Detenerse en medio de la intersección para observar', FALSE);


-- Pregunta 149: Artículo 114 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'De noche y con lluvia, tu parabrisas se empaña y disminuye la visibilidad. ¿Qué haces?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '114')
);
INSERT INTO opt (qid, txt, correct) VALUES
(149, 'Activo desempañador/aire, reduzco velocidad y mantengo luces de cruce', TRUE),
(149, 'Apago luces para evitar reflejos', FALSE),
(149, 'Abro las ventanas y acelero', FALSE),
(149, 'Sigo igual para no perder tiempo', FALSE);


-- Pregunta 150: Artículo 115 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Una señal vertical de “Velocidad máxima 40” en zona residencial implica:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '115')
);
INSERT INTO opt (qid, txt, correct) VALUES
(150, 'No exceder 40 km/h salvo disposición específica que indique menos', TRUE),
(150, 'Poder superar 40 km/h si la vía está vacía', FALSE),
(150, 'Aplicar solo de noche', FALSE),
(150, 'Aplicar solo a vehículos pesados', FALSE);


-- Pregunta 151: Artículo 116 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un vehículo delante activa intermitente para girar a la izquierda y se detiene. ¿Qué haces?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '116')
);
INSERT INTO opt (qid, txt, correct) VALUES
(151, 'Reduzco, guardo distancia y espero sin invadir carril contrario si no es seguro', TRUE),
(151, 'Adelanto por la derecha sobre la banqueta', FALSE),
(151, 'Le toco bocina hasta que se quite', FALSE),
(151, 'Me pego al parachoques para apurarlo', FALSE);


-- Pregunta 152: Artículo 117 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Conduces en bajada prolongada; observas olor a freno. ¿Cómo actúas?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '117')
);
INSERT INTO opt (qid, txt, correct) VALUES
(152, 'Uso freno motor con cambio adecuado y evito frenar en exceso de forma continua', TRUE),
(152, 'Mantengo frenado constante para no ganar velocidad', FALSE),
(152, 'Pongo neutro y dejo que ruede libremente', FALSE),
(152, 'Apago el motor para “enfriar” el sistema', FALSE);


-- Pregunta 153: Artículo 118 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Una señal preventiva de curva peligrosa con velocidad sugerida implica que:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '118')
);
INSERT INTO opt (qid, txt, correct) VALUES
(153, 'Debes ajustar tu velocidad a la sugerida para mayor seguridad', TRUE),
(153, 'Puedes ignorarla si el pavimento está seco', FALSE),
(153, 'Solo aplica para vehículos pesados', FALSE),
(153, 'Es una recomendación que no influye en la conducción', FALSE);


-- Pregunta 154: Artículo 119 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un peatón inicia cruce cuando la luz peatonal cambia a rojo intermitente. ¿Qué haces?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '119')
);
INSERT INTO opt (qid, txt, correct) VALUES
(154, 'Permito que termine de cruzar si ya está en la calzada, sin ponerlo en riesgo', TRUE),
(154, 'Acelero antes de que llegue a mi carril', FALSE),
(154, 'Pito y avanzo para que se regrese', FALSE),
(154, 'Invado el paso peatonal para “ganar” el semáforo', FALSE);


-- Pregunta 155: Artículo 120 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'El auto comienza a sobrecalentarse en carretera. ¿Cuál es la respuesta segura?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '120')
);
INSERT INTO opt (qid, txt, correct) VALUES
(155, 'Me orillo en zona segura, apago el motor y espero a que baje la temperatura', TRUE),
(155, 'Abro el radiador de inmediato', FALSE),
(155, 'Sigo hasta el próximo retorno con calefacción encendida', FALSE),
(155, 'Acelero para que entre más aire', FALSE);


-- Pregunta 156: Artículo 121 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Una señal de “Prohibido adelantar” aplicada a tu carril significa:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '121')
);
INSERT INTO opt (qid, txt, correct) VALUES
(156, 'No puedes rebasar a otro vehículo hasta fin de la restricción', TRUE),
(156, 'Solo no puedes rebasar a buses', FALSE),
(156, 'Prohibición válida solo de noche', FALSE),
(156, 'Puedes rebasar si tocas bocina', FALSE);


-- Pregunta 157: Artículo 122 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Circulas tras una bicicleta en vía urbana sin ciclovía. ¿Qué debes hacer para adelantarla?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '122')
);
INSERT INTO opt (qid, txt, correct) VALUES
(157, 'Mantener distancia y adelantar cuando sea seguro, dejando separación lateral suficiente', TRUE),
(157, 'Pegarme para que acelere', FALSE),
(157, 'Rebasar sin cambiar de trayectoria', FALSE),
(157, 'Usar solo la bocina para advertir', FALSE);


-- Pregunta 158: Artículo 123 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Se te pincha una llanta fuera de la zona urbana. ¿Cuál es la secuencia correcta?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '123')
);
INSERT INTO opt (qid, txt, correct) VALUES
(158, 'Orillar, activar intermitentes, colocar triángulos y cambiar llanta en lugar seguro', TRUE),
(158, 'Frenar en seco en el carril', FALSE),
(158, 'Cambiar llanta a mitad de la calzada', FALSE),
(158, 'Seguir con la llanta dañada hasta el destino', FALSE);


-- Pregunta 159: Artículo 124 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Una señal de “Zona escolar” combinada con límite de velocidad implica que debes:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '124')
);
INSERT INTO opt (qid, txt, correct) VALUES
(159, 'Reducir velocidad al límite indicado y extremar precaución por presencia de menores', TRUE),
(159, 'Tocar bocina al pasar para avisar', FALSE),
(159, 'Acelerar para salir rápido de la zona', FALSE),
(159, 'Circular por el centro para “proteger” a peatones', FALSE);


-- Pregunta 160: Artículo 125 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Te aproximas a una rotonda saturada. ¿Qué regla de prioridad aplicas?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '125')
);
INSERT INTO opt (qid, txt, correct) VALUES
(160, 'Cedo el paso a quienes ya circulan dentro de la rotonda', TRUE),
(160, 'Entro primero si vengo por la derecha', FALSE),
(160, 'Entro rápido para no bloquear atrás', FALSE),
(160, 'Uso bocina para que me dejen entrar', FALSE);


-- Pregunta 161: Artículo 126 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Tu limpia parabrisas falla durante un aguacero en carretera. ¿Cómo reduces el riesgo?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '126')
);
INSERT INTO opt (qid, txt, correct) VALUES
(161, 'Reduzco velocidad, enciendo luces de cruce y busco detenerme fuera de la calzada', TRUE),
(161, 'Mantengo velocidad y sigo la estela del de adelante', FALSE),
(161, 'Uso solo luces de emergencia y continúo', FALSE),
(161, 'Me paso al carril contrario si veo mejor', FALSE);


-- Pregunta 162: Artículo 127 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un panel de mensaje variable advierte “colisión adelante, reduzca velocidad”. Esto significa:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '127')
);
INSERT INTO opt (qid, txt, correct) VALUES
(162, 'Debes disminuir la velocidad y prepararte para detenciones inesperadas', TRUE),
(162, 'Solo aplica a vehículos de carga', FALSE),
(162, 'Puedes ignorarlo si no ves luces rojas', FALSE),
(162, 'Es informativo sin impacto en tu conducción', FALSE);


-- Pregunta 163: Artículo 128 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un vehículo de emergencia se aproxima por detrás con sirena y luces. ¿Qué haces?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '128')
);
INSERT INTO opt (qid, txt, correct) VALUES
(163, 'Facilito el paso orillándome o cambiando de carril cuando sea seguro', TRUE),
(163, 'Acelero para despejarle el camino por delante', FALSE),
(163, 'Lo bloqueo para que no pase por mi carril', FALSE),
(163, 'Freno en seco donde estoy', FALSE);


-- Pregunta 164: Artículo 129 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Eres la primera en llegar a un choque leve sin heridos. ¿Cuál es el procedimiento correcto?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '129')
);
INSERT INTO opt (qid, txt, correct) VALUES
(164, 'Señalizar la zona, colocar triángulos, retirar vehículos si es seguro y reportar', TRUE),
(164, 'Mover los vehículos sin señalizar', FALSE),
(164, 'Dejar los autos en medio de la vía “para constancia”', FALSE),
(164, 'Encender luces altas y tocar bocina', FALSE);


-- Pregunta 165: Artículo 130 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Una señal reglamentaria de “No girar en U” implica que:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '130')
);
INSERT INTO opt (qid, txt, correct) VALUES
(165, 'Está prohibido realizar giros en U en ese tramo', TRUE),
(165, 'Solo está prohibido de 6:00 a 18:00', FALSE),
(165, 'Aplica únicamente a camiones', FALSE),
(165, 'Puedes hacerlo si no hay tránsito', FALSE);


-- Pregunta 166: Artículo 131 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un vehículo intenta incorporarse desde un garaje a la vía principal. ¿Quién tiene prioridad?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '131')
);
INSERT INTO opt (qid, txt, correct) VALUES
(166, 'La vía principal; quien sale debe ceder el paso', TRUE),
(166, 'El que enciende intermitente primero', FALSE),
(166, 'El que toque la bocina', FALSE),
(166, 'El vehículo más grande', FALSE);


-- Pregunta 167: Artículo 132 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'El pedal del freno se siente esponjoso y aumenta la distancia de frenado. ¿Qué haces?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '132')
);
INSERT INTO opt (qid, txt, correct) VALUES
(167, 'Detengo el vehículo en lugar seguro y solicito asistencia técnica', TRUE),
(167, 'Sigo conduciendo con freno de mano', FALSE),
(167, 'Acelero para “limpiar” el sistema', FALSE),
(167, 'Solo bajo un cambio y continúo', FALSE);


-- Pregunta 168: Artículo 133 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  '¿Qué significa una marca de zig-zag junto al borde en zona de parada de bus?',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '133')
);
INSERT INTO opt (qid, txt, correct) VALUES
(168, 'Área reservada: prohibido estacionar/detenerse para no obstaculizar la parada', TRUE),
(168, 'Área para estacionar con intermitentes', FALSE),
(168, 'Carril exclusivo para giros en U', FALSE),
(168, 'Zona de carga y descarga obligatoria', FALSE);


-- Pregunta 169: Artículo 134 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Te aproximas a un túnel largo: ¿qué preparativos son correctos antes de entrar?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '134')
);
INSERT INTO opt (qid, txt, correct) VALUES
(169, 'Encender luces de cruce, ajustar velocidad y aumentar distancia', TRUE),
(169, 'Luces altas y bocina para avisar', FALSE),
(169, 'Quitarse el cinturón por comodidad', FALSE),
(169, 'Cambiar a carril contrario para ver mejor', FALSE);


-- Pregunta 170: Artículo 135 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Durante una inundación repentina en la vía, el agua cubre media llanta. ¿Qué haces?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '135')
);
INSERT INTO opt (qid, txt, correct) VALUES
(170, 'Evito cruzar tramos anegados, busco ruta alterna o espero asistencia', TRUE),
(170, 'Acelero fuerte para crear una ola y pasar', FALSE),
(170, 'Cruzo en diagonal a mayor velocidad', FALSE),
(170, 'Desconecto ABS para frenar mejor', FALSE);

-- Pregunta 171: Artículo 136 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Tu vehículo empieza a vibrar a alta velocidad en carretera. ¿Qué haces?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '136')
);
INSERT INTO opt (qid, txt, correct) VALUES
(171, 'Reduzco velocidad gradualmente y verifico llantas o alineación al detenerme', TRUE),
(171, 'Sujeto el volante y acelero para estabilizarlo', FALSE),
(171, 'Freno fuerte para detenerme en seco', FALSE),
(171, 'Ignoro la vibración si no se escucha ruido', FALSE);


-- Pregunta 172: Artículo 137 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Una señal triangular con borde rojo y figura de resbalón indica:',
  'Señales',
  'Básico',
  (SELECT id FROM lawarticle WHERE artnum = '137')
);
INSERT INTO opt (qid, txt, correct) VALUES
(172, 'Pavimento resbaladizo: reduce velocidad y evita giros bruscos', TRUE),
(172, 'Zona de estacionamiento', FALSE),
(172, 'Vía cerrada', FALSE),
(172, 'Inicio de autopista', FALSE);


-- Pregunta 173: Artículo 138 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Si al conducir de noche un vehículo te encandila con luces altas, ¿qué debes hacer?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '138')
);
INSERT INTO opt (qid, txt, correct) VALUES
(173, 'Desviar la vista al borde derecho y reducir velocidad hasta recuperar visión', TRUE),
(173, 'Encender tus luces altas para responder', FALSE),
(173, 'Cerrar los ojos momentáneamente', FALSE),
(173, 'Pitar hasta que apague sus luces', FALSE);


-- Pregunta 174: Artículo 139 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'El acelerador se queda trabado mientras conduces. ¿Cuál es la acción correcta?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '139')
);
INSERT INTO opt (qid, txt, correct) VALUES
(174, 'Pongo punto muerto, apago el motor gradualmente y me detengo en zona segura', TRUE),
(174, 'Apago el motor de golpe con el carro en marcha', FALSE),
(174, 'Freno a fondo sin cambiar de marcha', FALSE),
(174, 'Tiro del freno de mano de inmediato', FALSE);

-- Pregunta 175: Artículo 140 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Transportas material frágil y voluminoso en autopista: ¿qué debes asegurar antes de iniciar el viaje?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '140')
);
INSERT INTO opt (qid, txt, correct) VALUES
(175, 'Que la carga esté firmemente sujeta y no comprometa visibilidad ni estabilidad', TRUE),
(175, 'Que sobrepase lateralmente sin señalización', FALSE),
(175, 'Que el maletero quede entreabierto para ventilar', FALSE),
(175, 'Que el peso recaiga todo en el eje trasero', FALSE);

-- Pregunta 176: Artículo 141 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Una señal de “Prohibido girar en U” complementada con horario específico implica que:',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '141')
);
INSERT INTO opt (qid, txt, correct) VALUES
(176, 'La prohibición rige en el horario indicado y fuera de él según la señal general', TRUE),
(176, 'Es solo una recomendación sin sanción', FALSE),
(176, 'Permite U si enciendes intermitentes', FALSE),
(176, 'Solo aplica a motocicletas', FALSE);

-- Pregunta 177: Artículo 142 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'En un control de carretera, la autoridad solicita documentación y verificación del equipo de seguridad. ¿Cómo procedes?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '142')
);
INSERT INTO opt (qid, txt, correct) VALUES
(177, 'Entrego documentos exigidos y muestro triángulos, extintor y botiquín si se requieren', TRUE),
(177, 'Me niego a abrir el maletero por privacidad', FALSE),
(177, 'Presento fotos del equipo en lugar del equipo real', FALSE),
(177, 'Acelero para evitar la revisión', FALSE);

-- Pregunta 178: Artículo 143 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Remolcas un vehículo averiado de noche: ¿qué condiciones de iluminación y señalización debes cumplir?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '143')
);
INSERT INTO opt (qid, txt, correct) VALUES
(178, 'Luces e intermitentes operativos y señal de advertencia en el remolcado', TRUE),
(178, 'Solo luces altas del vehículo tractor', FALSE),
(178, 'Cinta reflectiva en el gancho basta', FALSE),
(178, 'Ninguna señal si vas despacio', FALSE);

-- Pregunta 179: Artículo 144 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un carril reversible indicado por señalización variable entra en operación. ¿Qué debes verificar antes de incorporarte?',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '144')
);
INSERT INTO opt (qid, txt, correct) VALUES
(179, 'Sentido habilitado en paneles/luminarias y ausencia de flujo en contra', TRUE),
(179, 'Que haya menos tráfico en ese carril', FALSE),
(179, 'Que tu GPS lo recomiende', FALSE),
(179, 'Que el semáforo peatonal esté en rojo', FALSE);

-- Pregunta 180: Artículo 145 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Tras un siniestro con solo daños materiales, ¿qué pasos legales y de seguridad debes seguir?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '145')
);
INSERT INTO opt (qid, txt, correct) VALUES
(180, 'Señalizar, retirar vehículos si es posible, intercambiar datos y dar aviso según proceda', TRUE),
(180, 'Mover los autos sin avisar a nadie', FALSE),
(180, 'Abandonar el lugar para evitar congestión', FALSE),
(180, 'Esperar dentro del carril sin triángulos', FALSE);

-- Pregunta 181: Artículo 146 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Conduces un bus escolar: ¿qué protocolos adicionales debes cumplir al recoger y dejar estudiantes?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '146')
);
INSERT INTO opt (qid, txt, correct) VALUES
(181, 'Paradas seguras, luces/avisos reglamentarios y control de abordaje/descenso', TRUE),
(181, 'Parar en cualquier carril con balizas', FALSE),
(181, 'Permitir que suban con el bus en movimiento', FALSE),
(181, 'Detenerse sobre pasos peatonales', FALSE);

-- Pregunta 182: Artículo 147 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de “Velocidad mínima” en autopista: su efecto normativo es que…',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '147')
);
INSERT INTO opt (qid, txt, correct) VALUES
(182, 'No debes circular por debajo del valor indicado salvo causa justificada', TRUE),
(182, 'Es meramente informativa', FALSE),
(182, 'Solo aplica a vehículos de carga', FALSE),
(182, 'Se ignora si no hay tráfico', FALSE);

-- Pregunta 183: Artículo 148 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al transportar personas de pie en un vehículo autorizado, ¿qué condiciones de seguridad son obligatorias?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '148')
);
INSERT INTO opt (qid, txt, correct) VALUES
(183, 'Respeto de capacidad, barras/asideros y conducción suave sin maniobras bruscas', TRUE),
(183, 'Permitir exceso de ocupantes si el trayecto es corto', FALSE),
(183, 'Circular con puertas abiertas para ventilación', FALSE),
(183, 'Acelerar para reducir tiempo de exposición', FALSE);

-- Pregunta 184: Artículo 149 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Desciendes un puerto de montaña con carga pesada: ¿cómo gestionas freno motor y temperatura?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '149')
);
INSERT INTO opt (qid, txt, correct) VALUES
(184, 'Engranar relación baja, usar freno motor y evitar fatiga de frenos de servicio', TRUE),
(184, 'Bajar en neutro para ahorrar combustible', FALSE),
(184, 'Enfriar frenos con agua en marcha', FALSE),
(184, 'Frenar a fondo en cada curva', FALSE);

-- Pregunta 185: Artículo 150 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un panel informa “carril exclusivo bus” con horario. ¿Cuándo puedes usarlo en vehículo particular?',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '150')
);
INSERT INTO opt (qid, txt, correct) VALUES
(185, 'Solo fuera del horario señalado o cuando la norma lo permita expresamente', TRUE),
(185, 'Siempre que no estorbe a nadie', FALSE),
(185, 'Si enciendes luces de emergencia', FALSE),
(185, 'Si circulas por breves tramos', FALSE);

-- Pregunta 186: Artículo 151 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un vehículo de emergencia se aproxima por un carril reversible en sentido habilitado: tu obligación es…',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '151')
);
INSERT INTO opt (qid, txt, correct) VALUES
(186, 'Facilitar el paso sin invadir el sentido contrario ni obstruir el carril', TRUE),
(186, 'Detenerte en seco en medio del carril', FALSE),
(186, 'Acelerar para no estorbar', FALSE),
(186, 'Usar el arcén de forma continuada', FALSE);

-- Pregunta 187: Artículo 152 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Al reventar un neumático delantero a alta velocidad, ¿cuál es la secuencia de control correcta?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '152')
);
INSERT INTO opt (qid, txt, correct) VALUES
(187, 'Sujetar firme el volante, mantener trayectoria, soltar acelerador y frenar suave', TRUE),
(187, 'Frenar a fondo y girar hacia el arcén', FALSE),
(187, 'Apagar el motor de golpe', FALSE),
(187, 'Pisar embrague y soltar volante', FALSE);

-- Pregunta 188: Artículo 153 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Balizas encendidas en vehículo detenido en carril: la señalización complementaria adecuada es…',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '153')
);
INSERT INTO opt (qid, txt, correct) VALUES
(188, 'Colocar triángulos a la distancia reglamentaria y, de noche, elementos reflectivos', TRUE),
(188, 'Confiar solo en las luces de freno', FALSE),
(188, 'Poner chaleco y quedarse en la calzada', FALSE),
(188, 'Usar una linterna desde la ventanilla', FALSE);

-- Pregunta 189: Artículo 154 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Operas un vehículo articulado en zona urbana densa: ¿qué maniobras deben priorizar la seguridad de vulnerables?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '154')
);
INSERT INTO opt (qid, txt, correct) VALUES
(189, 'Giros amplios controlados, velocidad moderada y verificación de puntos ciegos', TRUE),
(189, 'Cierres de curva rápidos para “ganar” el paso', FALSE),
(189, 'Uso continuo de claxon para abrir paso', FALSE),
(189, 'Aproximación a centímetros de peatones', FALSE);

-- Pregunta 190: Artículo 155 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Tu vehículo cae al agua tras un choque: ¿cuál es el protocolo de evacuación?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '155')
);
INSERT INTO opt (qid, txt, correct) VALUES
(190, 'Destrabar cinturón, bajar ventana/romper vidrio y evacuar manteniendo la calma', TRUE),
(190, 'Abrir puertas de inmediato contra la presión del agua', FALSE),
(190, 'Esperar a que se hunda para salir', FALSE),
(190, 'Usar luces altas para pedir ayuda', FALSE);

-- Pregunta 191: Artículo 156 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de “Peso máximo por eje”: tu actuación correcta es…',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '156')
);
INSERT INTO opt (qid, txt, correct) VALUES
(191, 'Verificar la carga y abstenerse de ingresar si se supera el límite', TRUE),
(191, 'Entrar y descargar en medio del puente', FALSE),
(191, 'Pasar a mayor velocidad para “aligerar”', FALSE),
(191, 'Solo considerar el peso total, no por eje', FALSE);

-- Pregunta 192: Artículo 157 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Tras un choque con lesionados, ¿qué intervenciones están permitidas al conductor mientras arriban los servicios?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '157')
);
INSERT INTO opt (qid, txt, correct) VALUES
(192, 'Asegurar la zona, pedir ayuda, no mover víctimas salvo riesgo inminente', TRUE),
(192, 'Trasladar por cuenta propia sin valoración', FALSE),
(192, 'Ofrecer bebidas a los heridos', FALSE),
(192, 'Retirar evidencia para despejar la vía', FALSE);

-- Pregunta 193: Artículo 158 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Conduces con fuertes rachas de viento lateral en puente elevado: ¿cómo compensas el efecto?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '158')
);
INSERT INTO opt (qid, txt, correct) VALUES
(193, 'Reducir velocidad, sujetar firme el volante y anticipar correcciones suaves', TRUE),
(193, 'Acelerar para “vencer” el viento', FALSE),
(193, 'Circular pegado al borde del puente', FALSE),
(193, 'Desplazar el centro de carril hacia el carril opuesto', FALSE);


-- Pregunta 194: Artículo 159 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de “Altura máxima”: ¿qué debes considerar antes de ingresar a un paso inferior?',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '159')
);
INSERT INTO opt (qid, txt, correct) VALUES
(194, 'Altura total del vehículo y carga, incluyendo aditamentos', TRUE),
(194, 'Solo la altura del chasís', FALSE),
(194, 'Que la suspensión baje al pasar', FALSE),
(194, 'Que otros ya pasaron sin problema', FALSE);

-- Pregunta 195: Artículo 160 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'En un túnel con detención imprevista, ¿cuál es el procedimiento seguro?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '160')
);
INSERT INTO opt (qid, txt, correct) VALUES
(195, 'Encender luces de emergencia, mantener distancia y no dar marcha atrás', TRUE),
(195, 'Apagar luces para ahorrar batería', FALSE),
(195, 'Bajar a caminar entre carriles', FALSE),
(195, 'Hacer U en el túnel si puedes', FALSE);

-- Pregunta 196: Artículo 161 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Eres primer respondiente ante incendio vehicular: ¿qué uso del extintor es correcto?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '161')
);
INSERT INTO opt (qid, txt, correct) VALUES
(196, 'Apuntar a la base de la llama, mantener distancia y evacuar si no controlas', TRUE),
(196, 'Abrir el capó por completo y rociar dentro', FALSE),
(196, 'Usar agua en el motor eléctrico', FALSE),
(196, 'Acercar la cara para ver la llama', FALSE);

-- Pregunta 197: Artículo 162 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de “Zona escolar” con límite de 25 km/h y pictograma de niños: implica…',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '162')
);
INSERT INTO opt (qid, txt, correct) VALUES
(197, 'Reducción obligatoria de velocidad y máxima atención a cruces peatonales', TRUE),
(197, 'Sólo rige en fines de semana', FALSE),
(197, 'Permite adelantamientos en paso escolar', FALSE),
(197, 'Es decorativa, sin sanción', FALSE);

-- Pregunta 198: Artículo 163 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Circulas con mercancía que sobresale por detrás: ¿cómo debes señalizarla de día y de noche?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '163')
);
INSERT INTO opt (qid, txt, correct) VALUES
(198, 'Elemento rojo visible de día y luz/reflector rojo de noche en el extremo', TRUE),
(198, 'Ninguna señal si es menos de 50 cm', FALSE),
(198, 'Cinta adhesiva de cualquier color', FALSE),
(198, 'Una persona haciendo señas a pie', FALSE);

-- Pregunta 199: Artículo 164 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Perdiste el sistema de frenos en descenso: ¿qué maniobra de emergencia procede?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '164')
);
INSERT INTO opt (qid, txt, correct) VALUES
(199, 'Bajar marcha, usar freno motor y derivar a zona de escape si existe', TRUE),
(199, 'Apagar el motor y tirar freno de mano', FALSE),
(199, 'Pisar embrague y dejar rodar', FALSE),
(199, 'Girar bruscamente hacia el carril opuesto', FALSE);

-- Pregunta 200: Artículo 165 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de “Prohibido peatones” en vía de alta velocidad: su alcance es…',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '165')
);
INSERT INTO opt (qid, txt, correct) VALUES
(200, 'Restringe el paso de peatones por seguridad vial en ese trazado', TRUE),
(200, 'Permite peatones por el arcén', FALSE),
(200, 'Solo prohíbe bicicletas', FALSE),
(200, 'Rige solo de noche', FALSE);

-- Pregunta 201: Artículo 166 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Un control detecta neumáticos por debajo del índice de desgaste: ¿qué procede legalmente?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '166')
);
INSERT INTO opt (qid, txt, correct) VALUES
(201, 'Inmovilización/medidas correctivas y prohibición de circular hasta subsanar', TRUE),
(201, 'Continuar si vas a menos de 30 km/h', FALSE),
(201, 'Aumentar presión para “estirar” la vida', FALSE),
(201, 'Cubrir la banda con cinta', FALSE);

-- Pregunta 202: Artículo 167 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Te aproximas a un vado inundado sin poder estimar la profundidad: ¿qué decisión avanzada es correcta?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '167')
);
INSERT INTO opt (qid, txt, correct) VALUES
(202, 'No ingresar; buscar ruta alternativa o esperar indicaciones oficiales', TRUE),
(202, 'Entrar a alta velocidad para crear ola', FALSE),
(202, 'Seguir a vehículos altos “pegada” a ellos', FALSE),
(202, 'Apagar el motor y dejarte llevar', FALSE);

-- Pregunta 203: Artículo 168 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de “Fin de restricciones” tras zona de obras: significa que…',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '168')
);
INSERT INTO opt (qid, txt, correct) VALUES
(203, 'Cesan las limitaciones temporales y rigen las generales de la vía', TRUE),
(203, 'Aumenta automáticamente el límite +20 km/h', FALSE),
(203, 'Prohíbe el adelantamiento indefinidamente', FALSE),
(203, 'Indica desvío obligatorio', FALSE);

-- Pregunta 204: Artículo 169 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Conduces con remolque ligero en ciudad: ¿qué consideraciones de giro y frenado aplican?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '169')
);
INSERT INTO opt (qid, txt, correct) VALUES
(204, 'Aumentar radio de giro y anticipar frenadas por mayor inercia', TRUE),
(204, 'Girar igual que sin remolque', FALSE),
(204, 'Frenar más tarde para no perder ritmo', FALSE),
(204, 'Usar solo freno de mano', FALSE);

-- Pregunta 205: Artículo 170 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Falla el sistema de dirección asistida en autopista: ¿cómo finalizas la marcha con seguridad?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '170')
);
INSERT INTO opt (qid, txt, correct) VALUES
(205, 'Sujetar firme, reducir velocidad gradualmente y salir al arcén seguro', TRUE),
(205, 'Cruzar carriles bruscamente hacia la derecha', FALSE),
(205, 'Apagar el motor y bloquear la dirección', FALSE),
(205, 'Esperar a que “se arregle solo”', FALSE);

-- Pregunta 206: Artículo 171 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de “Control de velocidad por radar”: ¿cómo debe ajustarse tu conducción?',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '171')
);
INSERT INTO opt (qid, txt, correct) VALUES
(206, 'Mantener la velocidad dentro del límite legal y aumentar atención al entorno', TRUE),
(206, 'Acelerar antes y frenar al ver la cámara', FALSE),
(206, 'Circular por el arcén para evitar el radar', FALSE),
(206, 'Cubrir la placa con barro', FALSE);

-- Pregunta 207: Artículo 172 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Vehículo varado ocupa parcialmente un carril rápido de noche: distribuye las balizas/triángulos…',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '172')
);
INSERT INTO opt (qid, txt, correct) VALUES
(207, 'A distancia reglamentaria tras el vehículo y, si procede, otro por delante en vía de doble sentido', TRUE),
(207, 'Uno sobre el techo es suficiente', FALSE),
(207, 'Solo luces intermitentes bastan', FALSE),
(207, 'Un cono improvisado basta', FALSE);

-- Pregunta 208: Artículo 173 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Conduces un vehículo con cambio automático en pendiente prolongada: ¿cómo evitar fatiga de frenos?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '173')
);
INSERT INTO opt (qid, txt, correct) VALUES
(208, 'Seleccionar modo/relación baja y usar freno motor del convertidor', TRUE),
(208, 'Poner en N y dejar rodar', FALSE),
(208, 'Frenar a pulsos largos y fuertes', FALSE),
(208, 'Desconectar control de tracción', FALSE);

-- Pregunta 209: Artículo 174 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de “Vía sin salida” con excepción para peatones/bicis: ¿qué significa para tu trayecto en auto?',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '174')
);
INSERT INTO opt (qid, txt, correct) VALUES
(209, 'No hay continuidad para vehículos; solo paso para modos permitidos', TRUE),
(209, 'Puedes entrar y girar en U en cualquier acceso', FALSE),
(209, 'La señal es solo informativa', FALSE),
(209, 'Permite acceso si usas balizas', FALSE);

-- Pregunta 210: Artículo 175 - Escenarios
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Tras cruzar un vado, notas pérdida de frenos por humedad: ¿qué medida avanzada aplicas?',
  'Escenarios',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '175')
);
INSERT INTO opt (qid, txt, correct) VALUES
(210, 'Circular a baja velocidad usando suavemente el freno para recuperar eficacia, en zona segura', TRUE),
(210, 'Acelerar para que se ventilen', FALSE),
(210, 'Apagar el motor y detenerse en seco', FALSE),
(210, 'Bombear el pedal con el pie izquierdo y derecho a la vez', FALSE);

-- Pregunta 211: Artículo 176 - Simulaciones
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Con nieve o aguanieve ocasional, ¿cuándo instalar cadenas o usar modo nieve?',
  'Simulaciones',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '176')
);
INSERT INTO opt (qid, txt, correct) VALUES
(211, 'Cuando la adherencia es insuficiente y la señalización/autoridad lo exija o recomiende', TRUE),
(211, 'Solo si te quedas atascada', FALSE),
(211, 'Nunca en asfalto frío', FALSE),
(211, 'Solo en bajadas, no en subidas', FALSE);

-- Pregunta 212: Artículo 177 - Señales
INSERT INTO quest (txt, cat, lvl, lawid) VALUES (
  'Señal de “Control aduanero/policial” próxima: ¿qué conducta de aproximación es correcta?',
  'Señales',
  'Avanzado',
  (SELECT id FROM lawarticle WHERE artnum = '177')
);
INSERT INTO opt (qid, txt, correct) VALUES
(212, 'Reducir velocidad, respetar la fila, tener documentos listos y seguir indicaciones', TRUE),
(212, 'Aprovechar arcenes para adelantarte', FALSE),
(212, 'Hacer retorno antes del control', FALSE),
(212, 'Cubrir placas por privacidad', FALSE);
