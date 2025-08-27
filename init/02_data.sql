-- Insertar usuarios con ENUM de rol
INSERT INTO app_user (name, email, password, role) VALUES
('Juan Pérez', 'juan@example.com', 'hashed_password1', 'principiante'),
('María Gómez', 'maria@example.com', 'hashed_password2', 'principiante'),
('Carlos López', 'carlos@example.com', 'hashed_password3', 'avanzado'),
('Admin User', 'admin@example.com', 'hashed_password4', 'admin');

-- Insertar categorías de lecciones
INSERT INTO lesson_category (category_id, category_name) VALUES
(1, 'Simulaciones'),
(2, 'Señales'),
(3, 'Escenarios');

-- Insertar lecciones
INSERT INTO lesson (lesson_id, title, description, difficulty_level, points_awarded) VALUES
(1, 'Señales de Tránsito', 'Aprender las señales de tránsito esenciales', 'simple', 10),
(2, 'Normas de Conducción', 'Reglas básicas de manejo en la vía pública', 'advanced', 15);

-- Relacionar lecciones con categorías
INSERT INTO lesson_category_rel (lesson_id, category_id) VALUES
(1, 1),
(2, 2);

-- Insertar progreso de lecciones (usando el nuevo ENUM para estado)
INSERT INTO progress (progress_id, user_id, lesson_id, status, completion_date) VALUES
(1, 1, 1, 'completado', '2025-03-15 10:30:00'),
(2, 2, 1, 'en_progreso', NULL),
(3, 3, 2, 'completado', '2025-03-16 12:00:00');

-- Insertar exámenes
INSERT INTO exam (exam_id, title, description, difficulty_level, points_awarded) VALUES
(1, 'Examen Básico de Seguridad Vial', 'Evalúa conocimientos básicos de tránsito', 'simple', 20),
(2, 'Examen Avanzado de Normas', 'Examen sobre normativas avanzadas de conducción', 'advanced', 30);



-- Insertar progreso de exámenes (usando el nuevo ENUM para estado)
INSERT INTO exam_progress (exam_progress_id, user_id, exam_id, status, completion_date) VALUES
(1, 1, 1, 'completado', '2025-03-15 14:00:00'),
(2, 2, 1, 'en_progreso', NULL),
(3, 3, 2, 'completado', '2025-03-16 16:00:00');

-- Insertar resultados de exámenes
INSERT INTO exam_result (exam_result_id, user_id, exam_id, score, date) VALUES
(1, 1, 1, 90, '2025-03-15 14:10:00'),
(2, 3, 2, 85, '2025-03-16 16:10:00');

-- Insertar resultados de lecciones
INSERT INTO lesson_result (lesson_result_id, user_id, lesson_id, score, date) VALUES
(1, 1, 1, 95, '2025-03-15 10:35:00'),
(2, 3, 2, 90, '2025-03-16 12:05:00');

-- Insertar puntajes de usuarios
INSERT INTO user_score (user_id, total_points) VALUES
(1, 105),
(2, 0),
(3, 125),
(4, 0);

-- Insertar recompensas
INSERT INTO reward (reward_id, name, description, cost_points) VALUES
(1, 'Insignia Principiante', 'Recompensa por completar el nivel básico', 100),
(2, 'Insignia Avanzada', 'Recompensa por completar el nivel avanzado', 200);

-- Insertar logs del sistema
INSERT INTO log (log_id, timestamp, username, affected_table, operation, details) VALUES
(1, '2025-03-15 11:30:00', 'Juan Pérez', 'progress', 'UPDATE', 'Actualización de estado de progreso'),
(2, '2025-03-16 10:00:00', 'Carlos López', 'exam_result', 'INSERT', 'Nuevo resultado de examen registrado');

-- Insertar ranking
INSERT INTO leaderboard (leaderboard_id, user_id, position, total_points) VALUES
(1, 3, 1, 125),
(2, 1, 2, 105),
(3, 2, 3, 0),
(4, 4, 4, 0);
