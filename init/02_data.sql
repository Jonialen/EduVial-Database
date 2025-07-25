-- Archivo comentado por Gemini
-- =====================================================================
-- INSERCIÓN DE DATOS DE EJEMPLO
-- =====================================================================

-- Insertar usuarios iniciales con diferentes roles.
-- Las contraseñas 'hashed_passwordX' son placeholders y deben ser reemplazadas por hashes reales.
INSERT INTO app_user (name, email, password, role) VALUES
('Juan Pérez', 'juan@example.com', 'hashed_password1', 'principiante'),
('María Gómez', 'maria@example.com', 'hashed_password2', 'principiante'),
('Carlos López', 'carlos@example.com', 'hashed_password3', 'avanzado'),
('Admin User', 'admin@example.com', 'hashed_password4', 'admin');

-- Insertar categorías para las lecciones.
INSERT INTO lesson_category (category_id, category_name) VALUES
(1, 'Seguridad Vial'),
(2, 'Normas de Conducción');

-- Insertar lecciones de ejemplo con diferentes niveles de dificultad y puntuaciones.
INSERT INTO lesson (lesson_id, title, description, difficulty_level, points_awarded) VALUES
(1, 'Señales de Tránsito', 'Aprender las señales de tránsito esenciales', 'simple', 10),
(2, 'Normas de Conducción', 'Reglas básicas de manejo en la vía pública', 'advanced', 15);

-- Relacionar las lecciones creadas con sus respectivas categorías.
INSERT INTO lesson_category_rel (lesson_id, category_id) VALUES
(1, 1), -- "Señales de Tránsito" es de "Seguridad Vial".
(2, 2); -- "Normas de Conducción" es de "Normas de Conducción".

-- Insertar registros de progreso para los usuarios en las lecciones.
INSERT INTO progress (progress_id, user_id, lesson_id, status, completion_date) VALUES
(1, 1, 1, 'completado', '2025-03-15 10:30:00'), -- Juan completó la lección 1.
(2, 2, 1, 'en_progreso', NULL), -- María está cursando la lección 1.
(3, 3, 2, 'completado', '2025-03-16 12:00:00'); -- Carlos completó la lección 2.

-- Insertar exámenes de ejemplo.
INSERT INTO exam (exam_id, title, description, difficulty_level, points_awarded) VALUES
(1, 'Examen Básico de Seguridad Vial', 'Evalúa conocimientos básicos de tránsito', 'simple', 20),
(2, 'Examen Avanzado de Normas', 'Examen sobre normativas avanzadas de conducción', 'advanced', 30);

-- Insertar preguntas de ejemplo para los exámenes.
INSERT INTO question (question_id, question_text, question_type) VALUES
(1, '¿Qué significa una señal de alto?', 'multiple_choice'),
(2, '¿Es obligatorio usar el cinturón de seguridad?', 'true_false');

-- Vincular las preguntas a los exámenes correspondientes.
INSERT INTO exam_question (exam_id, question_id) VALUES
(1, 1), -- La pregunta 1 pertenece al examen 1.
(1, 2); -- La pregunta 2 también pertenece al examen 1.

-- Insertar las opciones de respuesta para las preguntas de opción múltiple.
INSERT INTO answer_option (option_id, question_id, option_text, is_correct) VALUES
(1, 1, 'Debe detenerse completamente', TRUE), -- Respuesta correcta para la pregunta 1.
(2, 1, 'Debe reducir la velocidad', FALSE), -- Respuesta incorrecta.
(3, 2, 'Sí', TRUE), -- Respuesta correcta para la pregunta 2.
(4, 2, 'No', FALSE); -- Respuesta incorrecta.

-- Insertar registros de progreso de los usuarios en los exámenes.
INSERT INTO exam_progress (exam_progress_id, user_id, exam_id, status, completion_date) VALUES
(1, 1, 1, 'completado', '2025-03-15 14:00:00'), -- Juan completó el examen 1.
(2, 2, 1, 'en_progreso', NULL), -- María está realizando el examen 1.
(3, 3, 2, 'completado', '2025-03-16 16:00:00'); -- Carlos completó el examen 2.

-- Insertar los resultados (calificaciones) de los exámenes completados.
INSERT INTO exam_result (exam_result_id, user_id, exam_id, score, date) VALUES
(1, 1, 1, 90, '2025-03-15 14:10:00'), -- Juan obtuvo 90 en el examen 1.
(2, 3, 2, 85, '2025-03-16 16:10:00'); -- Carlos obtuvo 85 en el examen 2.

-- Insertar los resultados de las lecciones completadas.
INSERT INTO lesson_result (lesson_result_id, user_id, lesson_id, score, date) VALUES
(1, 1, 1, 95, '2025-03-15 10:35:00'), -- Juan obtuvo 95 en la lección 1.
(2, 3, 2, 90, '2025-03-16 12:05:00'); -- Carlos obtuvo 90 en la lección 2.

-- Actualizar los puntajes totales de los usuarios.
INSERT INTO user_score (score_id, user_id, total_points) VALUES
(1, 1, 105), -- Puntos de Juan.
(2, 2, 0),   -- Puntos de María (aún no ha completado nada).
(3, 3, 125), -- Puntos de Carlos.
(4, 4, 0);   -- Puntos del Admin.

-- Insertar recompensas que los usuarios pueden adquirir.
INSERT INTO reward (reward_id, name, description, cost_points) VALUES
(1, 'Insignia Principiante', 'Recompensa por completar el nivel básico', 100),
(2, 'Insignia Avanzada', 'Recompensa por completar el nivel avanzado', 200);

-- Insertar historial de notificaciones enviadas a los usuarios.
INSERT INTO notification_history (notification_id, user_id, message, sent_date) VALUES
(1, 1, 'Has completado la lección de Señales de Tránsito', '2025-03-15 11:00:00'),
(2, 3, 'Nuevo examen disponible: Examen Avanzado de Normas', '2025-03-16 09:30:00');

-- Insertar logs de ejemplo para auditoría del sistema.
INSERT INTO log (log_id, timestamp, username, affected_table, operation, details) VALUES
(1, '2025-03-15 11:30:00', 'Juan Pérez', 'progress', 'UPDATE', 'Actualización de estado de progreso'),
(2, '2025-03-16 10:00:00', 'Carlos López', 'exam_result', 'INSERT', 'Nuevo resultado de examen registrado');

-- Insertar datos en la tabla de ranking (leaderboard).
INSERT INTO leaderboard (leaderboard_id, user_id, position, total_points) VALUES
(1, 3, 1, 125), -- Carlos en 1er lugar.
(2, 1, 2, 105), -- Juan en 2do lugar.
(3, 2, 3, 0),   -- María en 3er lugar.
(4, 4, 4, 0);   -- Admin en 4to lugar.