-- =================================================================
-- DEFINICIÓN DE TIPOS ENUMERADOS (ENUMS)
-- =================================================================

-- Tipo ENUM para los tipos de preguntas.
-- 'multiple_choice': Opción múltiple
-- 'true_false': Verdadero o falso
-- 'short_answer': Respuesta corta
CREATE TYPE question_type_enum AS ENUM ('multiple_choice', 'true_false', 'short_answer');

-- Tipo ENUM para los roles de usuario.
-- 'admin': Administrador con todos los privilegios.
-- 'principiante': Usuario estándar en el nivel inicial.
-- 'avanzado': Usuario que ha progresado a un nivel superior.
CREATE TYPE user_role_enum AS ENUM ('admin', 'principiante', 'avanzado');

-- Tipo ENUM para el estado de progreso en lecciones y exámenes.
-- 'no_completado': El usuario no ha iniciado la actividad.
-- 'en_progreso': El usuario ha iniciado pero no ha completado la actividad.
-- 'completado': El usuario ha finalizado la actividad.
CREATE TYPE progress_status_enum AS ENUM ('no_completado', 'en_progreso', 'completado');

-- Tipo ENUM para el nivel de dificultad de lecciones o exámenes.
-- 'simple': Nivel básico.
-- 'advanced': Nivel avanzado.
CREATE TYPE difficulty_level_enum AS ENUM ('simple', 'advanced');


-- =================================================================
-- TABLAS PRINCIPALES DE LA APLICACIÓN
-- =================================================================

-- Tabla `app_user`: Almacena la información de los usuarios de la aplicación.
CREATE TABLE app_user (
  user_id SERIAL PRIMARY KEY,          -- Identificador único del usuario.
  name VARCHAR(100) NOT NULL,          -- Nombre del usuario.
  email VARCHAR(100) NOT NULL UNIQUE,  -- Correo electrónico único para el inicio de sesión.
  password CHAR(60) NOT NULL,          -- Contraseña hasheada del usuario.
  role user_role_enum NOT NULL         -- Rol del usuario (admin, principiante, avanzado).
);

-- Tabla `lesson`: Contiene la información sobre las lecciones educativas.
CREATE TABLE lesson (
  lesson_id SERIAL PRIMARY KEY,                   -- Identificador único de la lección.
  title VARCHAR(255) NOT NULL,                    -- Título de la lección.
  description TEXT,                               -- Descripción detallada de la lección.
  difficulty_level difficulty_level_enum NOT NULL, -- Nivel de dificultad (simple, advanced).
  points_awarded INT NOT NULL DEFAULT 0           -- Puntos que se otorgan al completar la lección.
);

-- Tabla `lesson_category`: Almacena las categorías para las lecciones (ej. 'Seguridad Vial').
CREATE TABLE lesson_category (
  category_id SERIAL PRIMARY KEY,           -- Identificador único de la categoría.
  category_name VARCHAR(100) NOT NULL UNIQUE -- Nombre único de la categoría.
);

-- Tabla `lesson_category_rel`: Tabla de relación para asociar lecciones con categorías (muchos a muchos).
CREATE TABLE lesson_category_rel (
  lesson_id INT NOT NULL,   -- FK a la tabla 'lesson'.
  category_id INT NOT NULL, -- FK a la tabla 'lesson_category'.
  PRIMARY KEY (lesson_id, category_id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id),
  FOREIGN KEY (category_id) REFERENCES lesson_category(category_id)
);

-- Tabla `exam`: Contiene la información sobre los exámenes.
CREATE TABLE exam (
  exam_id SERIAL PRIMARY KEY,                     -- Identificador único del examen.
  title VARCHAR(255) NOT NULL,                    -- Título del examen.
  description TEXT,                               -- Descripción del examen.
  difficulty_level difficulty_level_enum NOT NULL, -- Nivel de dificultad (simple, advanced).
  points_awarded INT NOT NULL DEFAULT 0           -- Puntos que se otorgan al aprobar el examen.
);


-- =================================================================
-- TABLAS DE SEGUIMIENTO DE PROGRESO Y RESULTADOS
-- =================================================================

-- Tabla `progress`: Registra el progreso de un usuario en una lección específica.
CREATE TABLE progress (
  progress_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,                                         -- FK al usuario.
  lesson_id INT NOT NULL,                                       -- FK a la lección.
  status progress_status_enum NOT NULL DEFAULT 'no_completado', -- Estado del progreso.
  completion_date TIMESTAMP,                                    -- Fecha y hora de finalización.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id)
);

-- Tabla `exam_progress`: Registra el progreso de un usuario en un examen específico.
CREATE TABLE exam_progress (
  exam_progress_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,                                         -- FK al usuario.
  exam_id INT NOT NULL,                                         -- FK al examen.
  status progress_status_enum NOT NULL DEFAULT 'no_completado', -- Estado del progreso.
  completion_date TIMESTAMP,                                    -- Fecha y hora de finalización.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (exam_id) REFERENCES exam(exam_id)
);

-- Tabla `exam_result`: Almacena los resultados obtenidos por un usuario en un examen.
CREATE TABLE exam_result (
  exam_result_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,                 -- FK al usuario.
  exam_id INT NOT NULL,                 -- FK al examen.
  score INT NOT NULL,                   -- Puntuación obtenida.
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha del resultado.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (exam_id) REFERENCES exam(exam_id)
);

-- Tabla `lesson_result`: Almacena los resultados obtenidos por un usuario en una lección.
CREATE TABLE lesson_result (
  lesson_result_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,                 -- FK al usuario.
  lesson_id INT NOT NULL,               -- FK a la lección.
  score INT NOT NULL,                   -- Puntuación obtenida.
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha del resultado.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id)
);


-- =================================================================
-- TABLAS DE GAMIFICACIÓN (PUNTUACIÓN, RECOMPENSAS, RANKING)
-- =================================================================

-- Tabla `user_score`: Almacena el puntaje total acumulado por cada usuario.
CREATE TABLE user_score (
  score_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,         -- FK al usuario.
  total_points INT DEFAULT 0,   -- Total de puntos acumulados.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);

-- Tabla `reward`: Define las recompensas o insignias que los usuarios pueden obtener.
CREATE TABLE reward (
  reward_id SERIAL PRIMARY KEY,
  name VARCHAR(100),          -- Nombre de la recompensa (ej. 'Insignia de Seguridad Vial').
  description TEXT,           -- Descripción de la recompensa.
  cost_points INT NOT NULL    -- Puntos necesarios para canjear la recompensa.
);

-- Tabla `reward_redemption`: Registra cuándo un usuario canjea una recompensa.
CREATE TABLE reward_redemption (
  redemption_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,               -- FK al usuario.
  reward_id INT NOT NULL,             -- FK a la recompensa.
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha del canje.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (reward_id) REFERENCES reward(reward_id)
);

-- Tabla `leaderboard`: Almacena la posición de los usuarios en el ranking.
-- Esta tabla podría ser actualizada periódicamente mediante un proceso batch.
CREATE TABLE leaderboard (
  leaderboard_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,       -- FK al usuario.
  position INT NOT NULL,      -- Posición en el ranking.
  total_points INT NOT NULL,  -- Puntuación total con la que figura en el ranking.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);


-- =================================================================
-- TABLAS DE PREGUNTAS Y RESPUESTAS (ESQUEMA INICIAL)
-- =================================================================

-- Tabla `question`: Almacena las preguntas para lecciones o exámenes.
-- NOTA: Existe una estructura más detallada en `04_preguntas.sql` (`quest`).
CREATE TABLE question (
  question_id SERIAL PRIMARY KEY,
  question_text TEXT,             -- El texto de la pregunta.
  question_type question_type_enum -- El tipo de pregunta.
);

-- Tabla `exam_question`: Relaciona los exámenes con sus preguntas (muchos a muchos).
CREATE TABLE exam_question (
  exam_id INT NOT NULL,     -- FK al examen.
  question_id INT NOT NULL, -- FK a la pregunta.
  PRIMARY KEY (exam_id, question_id),
  FOREIGN KEY (exam_id) REFERENCES exam(exam_id),
  FOREIGN KEY (question_id) REFERENCES question(question_id)
);

-- Tabla `answer_option`: Almacena las posibles opciones de respuesta para una pregunta.
-- NOTA: Existe una estructura más detallada en `04_preguntas.sql` (`opt`).
CREATE TABLE answer_option (
  option_id SERIAL PRIMARY KEY,
  question_id INT NOT NULL, -- FK a la pregunta a la que pertenece esta opción.
  option_text TEXT,         -- El texto de la opción.
  is_correct BOOLEAN,       -- Indica si esta es la respuesta correcta.
  FOREIGN KEY (question_id) REFERENCES question(question_id)
);


-- =================================================================
-- TABLAS DE SOPORTE Y LOGS
-- =================================================================

-- Tabla `notification_history`: Guarda un historial de las notificaciones enviadas a los usuarios.
CREATE TABLE notification_history (
  notification_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,       -- FK al usuario que recibió la notificación.
  message TEXT,               -- Contenido del mensaje.
  sent_date TIMESTAMP,        -- Fecha y hora de envío.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);

-- Tabla `log`: Registra eventos importantes o cambios en el sistema para auditoría.
CREATE TABLE log (
  log_id SERIAL PRIMARY KEY,
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Fecha y hora del evento.
  username VARCHAR(100) NOT NULL,   -- Usuario que realizó la operación.
  affected_table VARCHAR(100) NOT NULL, -- Tabla afectada.
  operation VARCHAR(50) NOT NULL,   -- Tipo de operación (INSERT, UPDATE, DELETE).
  details TEXT                      -- Detalles adicionales sobre el evento.
);


-- =================================================================
-- TABLAS DE CONTENIDO DE LEYES DE TRÁNSITO
-- =================================================================

-- Tabla `lawarticle`: Almacena el contenido de los artículos de la ley de tránsito.
CREATE TABLE lawarticle (
  id SERIAL PRIMARY KEY,          -- Identificador único del artículo.
  artnum VARCHAR(10) NOT NULL,    -- Número del artículo (ej. '1', '25bis').
  title VARCHAR(255) NOT NULL,    -- Título o encabezado del artículo.
  descr TEXT NOT NULL,            -- Texto completo o descripción del artículo.
  sanc TEXT                       -- Sanción asociada al artículo, si aplica.
);

-- Tabla `lawcat`: Almacena las categorías para los artículos de ley (ej. 'Normas generales', 'Sanciones').
CREATE TABLE lawcat (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL -- Nombre de la categoría de ley.
);

-- Tabla `lawartcat`: Tabla de relación para asociar artículos con sus categorías (muchos a muchos).
CREATE TABLE lawartcat (
  id SERIAL PRIMARY KEY,
  artid INT REFERENCES lawarticle(id) ON DELETE CASCADE, -- FK al artículo.
  catid INT REFERENCES lawcat(id) ON DELETE CASCADE    -- FK a la categoría.
);