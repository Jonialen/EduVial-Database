-- Archivo comentado por Gemini
-- =====================================================================
-- CREACIÓN DE TIPOS DE DATOS PERSONALIZADOS (ENUMS)
-- =====================================================================

-- Tipo ENUM para definir los tipos de preguntas posibles en la aplicación.
-- 'multiple_choice': Opción múltiple.
-- 'true_false': Verdadero o falso.
-- 'short_answer': Respuesta corta.
CREATE TYPE question_type_enum AS ENUM ('multiple_choice', 'true_false', 'short_answer');

-- Tipo ENUM para los roles de usuario dentro del sistema.
-- 'admin': Administrador con todos los privilegios.
-- 'principiante': Usuario nuevo o con nivel básico.
-- 'avanzado': Usuario con conocimientos avanzados.
CREATE TYPE user_role_enum AS ENUM ('admin', 'principiante', 'avanzado');

-- Tipo ENUM para el estado del progreso de un usuario en lecciones o exámenes.
-- 'no_completado': El usuario no ha iniciado la actividad.
-- 'en_progreso': El usuario ha iniciado pero no ha finalizado la actividad.
-- 'completado': El usuario ha finalizado la actividad.
CREATE TYPE progress_status_enum AS ENUM ('no_completado', 'en_progreso', 'completado');

-- Tipo ENUM para definir el nivel de dificultad de lecciones o exámenes.
-- 'simple': Nivel básico o de introducción.
-- 'advanced': Nivel para usuarios con más experiencia.
CREATE TYPE difficulty_level_enum AS ENUM ('simple', 'advanced');


-- =====================================================================
-- TABLAS PRINCIPALES DEL SISTEMA
-- =====================================================================

-- Tabla de usuarios: Almacena la información de los usuarios de la aplicación.
CREATE TABLE app_user (
  user_id SERIAL PRIMARY KEY, -- Identificador único del usuario.
  name VARCHAR(100) NOT NULL, -- Nombre del usuario.
  email VARCHAR(100) NOT NULL UNIQUE, -- Correo electrónico único para el inicio de sesión.
  password CHAR(60) NOT NULL, -- Contraseña hasheada del usuario.
  role user_role_enum NOT NULL -- Rol del usuario (admin, principiante, avanzado).
);

-- Tabla de lecciones: Contiene la información sobre las lecciones disponibles.
CREATE TABLE lesson (
  lesson_id SERIAL PRIMARY KEY, -- Identificador único de la lección.
  title VARCHAR(255) NOT NULL, -- Título de la lección.
  description TEXT, -- Descripción detallada del contenido de la lección.
  difficulty_level difficulty_level_enum NOT NULL, -- Nivel de dificultad (simple, advanced).
  points_awarded INT NOT NULL DEFAULT 0 -- Puntos que se otorgan al completar la lección.
);

-- Tabla de categorías de lecciones: Permite clasificar las lecciones por temas.
CREATE TABLE lesson_category (
  category_id SERIAL PRIMARY KEY, -- Identificador único de la categoría.
  category_name VARCHAR(100) NOT NULL UNIQUE -- Nombre de la categoría (ej: "Seguridad Vial").
);

-- Tabla de relación lección-categoría: Vincula las lecciones con sus categorías (relación muchos a muchos).
CREATE TABLE lesson_category_rel (
  lesson_id INT NOT NULL, -- Clave foránea a la tabla de lecciones.
  category_id INT NOT NULL, -- Clave foránea a la tabla de categorías.
  PRIMARY KEY (lesson_id, category_id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id),
  FOREIGN KEY (category_id) REFERENCES lesson_category(category_id)
);

-- Tabla de exámenes: Almacena la información sobre los exámenes de evaluación.
CREATE TABLE exam (
  exam_id SERIAL PRIMARY KEY, -- Identificador único del examen.
  title VARCHAR(255) NOT NULL, -- Título del examen.
  description TEXT, -- Descripción del contenido del examen.
  difficulty_level difficulty_level_enum NOT NULL, -- Nivel de dificultad (simple, advanced).
  points_awarded INT NOT NULL DEFAULT 0 -- Puntos que se otorgan al aprobar el examen.
);


-- =====================================================================
-- TABLAS DE SEGUIMIENTO DE PROGRESO Y RESULTADOS
-- =====================================================================

-- Progreso de lecciones: Registra el avance de cada usuario en las lecciones.
CREATE TABLE progress (
  progress_id SERIAL PRIMARY KEY, -- Identificador único del registro de progreso.
  user_id INT NOT NULL, -- Usuario que realiza la lección.
  lesson_id INT NOT NULL, -- Lección en curso.
  status progress_status_enum NOT NULL DEFAULT 'no_completado', -- Estado del progreso.
  completion_date TIMESTAMP, -- Fecha y hora de finalización de la lección.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id)
);

-- Progreso de exámenes: Registra el avance de cada usuario en los exámenes.
CREATE TABLE exam_progress (
  exam_progress_id SERIAL PRIMARY KEY, -- Identificador único del registro de progreso.
  user_id INT NOT NULL, -- Usuario que realiza el examen.
  exam_id INT NOT NULL, -- Examen en curso.
  status progress_status_enum NOT NULL DEFAULT 'no_completado', -- Estado del progreso.
  completion_date TIMESTAMP, -- Fecha y hora de finalización del examen.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (exam_id) REFERENCES exam(exam_id)
);

-- Resultados de exámenes: Almacena la calificación obtenida por un usuario en un examen.
CREATE TABLE exam_result (
  exam_result_id SERIAL PRIMARY KEY, -- Identificador único del resultado.
  user_id INT NOT NULL, -- Usuario que realizó el examen.
  exam_id INT NOT NULL, -- Examen evaluado.
  score INT NOT NULL, -- Puntuación obtenida.
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha y hora del resultado.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (exam_id) REFERENCES exam(exam_id)
);

-- Resultados de lecciones: Almacena la calificación obtenida por un usuario en una lección.
CREATE TABLE lesson_result (
  lesson_result_id SERIAL PRIMARY KEY, -- Identificador único del resultado.
  user_id INT NOT NULL, -- Usuario que completó la lección.
  lesson_id INT NOT NULL, -- Lección evaluada.
  score INT NOT NULL, -- Puntuación obtenida.
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha y hora del resultado.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id)
);


-- =====================================================================
-- TABLAS DE GAMIFICACIÓN Y RECOMPENSAS
-- =====================================================================

-- Puntaje acumulado por usuario: Guarda el total de puntos de cada usuario.
CREATE TABLE user_score (
  score_id SERIAL PRIMARY KEY, -- Identificador único del puntaje.
  user_id INT NOT NULL, -- Usuario al que pertenece el puntaje.
  total_points INT DEFAULT 0, -- Suma total de puntos obtenidos.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);

-- Recompensas: Define las recompensas que los usuarios pueden canjear con sus puntos.
CREATE TABLE reward (
  reward_id SERIAL PRIMARY KEY, -- Identificador único de la recompensa.
  name VARCHAR(100), -- Nombre de la recompensa (ej: "Insignia de experto").
  description TEXT, -- Descripción de la recompensa.
  cost_points INT NOT NULL -- Puntos necesarios para canjear la recompensa.
);

-- Canje de recompensas: Registra las recompensas que un usuario ha canjeado.
CREATE TABLE reward_redemption (
  redemption_id SERIAL PRIMARY KEY, -- Identificador único del canje.
  user_id INT NOT NULL, -- Usuario que canjea la recompensa.
  reward_id INT NOT NULL, -- Recompensa canjeada.
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha y hora del canje.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (reward_id) REFERENCES reward(reward_id)
);

-- Tabla de ranking (Leaderboard): Almacena la posición de los usuarios según sus puntos.
CREATE TABLE leaderboard (
  leaderboard_id SERIAL PRIMARY KEY, -- Identificador único del registro en el ranking.
  user_id INT NOT NULL, -- Usuario clasificado.
  position INT NOT NULL, -- Posición en el ranking.
  total_points INT NOT NULL, -- Puntos totales con los que clasificó.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);


-- =====================================================================
-- TABLAS DE PREGUNTAS Y RESPUESTAS
-- =====================================================================

-- Preguntas: Contiene el texto y tipo de cada pregunta para lecciones y exámenes.
CREATE TABLE question (
  question_id SERIAL PRIMARY KEY, -- Identificador único de la pregunta.
  question_text TEXT, -- El texto de la pregunta.
  question_type question_type_enum -- El tipo de pregunta (opción múltiple, etc.).
);

-- Relación examen-pregunta: Asocia las preguntas a un examen específico.
CREATE TABLE exam_question (
  exam_id INT NOT NULL, -- Clave foránea al examen.
  question_id INT NOT NULL, -- Clave foránea a la pregunta.
  PRIMARY KEY (exam_id, question_id),
  FOREIGN KEY (exam_id) REFERENCES exam(exam_id),
  FOREIGN KEY (question_id) REFERENCES question(question_id)
);

-- Opciones de respuesta: Almacena las posibles respuestas para una pregunta de opción múltiple.
CREATE TABLE answer_option (
  option_id SERIAL PRIMARY KEY, -- Identificador único de la opción.
  question_id INT NOT NULL, -- Pregunta a la que pertenece esta opción.
  option_text TEXT, -- El texto de la opción de respuesta.
  is_correct BOOLEAN, -- Indica si esta es la respuesta correcta.
  FOREIGN KEY (question_id) REFERENCES question(question_id)
);


-- =====================================================================
-- TABLAS DE SISTEMA Y ADMINISTRACIÓN
-- =====================================================================

-- Historial de notificaciones: Guarda un registro de las notificaciones enviadas a los usuarios.
CREATE TABLE notification_history (
  notification_id SERIAL PRIMARY KEY, -- Identificador único de la notificación.
  user_id INT NOT NULL, -- Usuario que recibió la notificación.
  message TEXT, -- Contenido del mensaje de la notificación.
  sent_date TIMESTAMP, -- Fecha y hora de envío.
  FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);

-- Logs del sistema: Registra eventos importantes o cambios en la base de datos para auditoría.
CREATE TABLE log (
  log_id SERIAL PRIMARY KEY, -- Identificador único del log.
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Fecha y hora del evento.
  username VARCHAR(100) NOT NULL, -- Usuario que generó el evento.
  affected_table VARCHAR(100) NOT NULL, -- Tabla afectada por la operación.
  operation VARCHAR(50) NOT NULL, -- Tipo de operación (INSERT, UPDATE, DELETE).
  details TEXT -- Detalles adicionales sobre el evento.
);


-- =====================================================================
-- TABLAS RELACIONADAS CON LAS LEYES DE TRÁNSITO
-- =====================================================================

-- Tabla de artículos de ley: Almacena la información de los artículos de la ley de tránsito.
CREATE TABLE lawarticle (
  id SERIAL PRIMARY KEY, -- Identificador único del artículo.
  artnum VARCHAR(10) NOT NULL, -- Número del artículo (ej: "Art. 82").
  title VARCHAR(255) NOT NULL, -- Título o encabezado del artículo.
  descr TEXT NOT NULL, -- Descripción completa del artículo.
  sanc TEXT -- Sanción asociada al incumplimiento del artículo.
);

-- Tabla de categorías de leyes: Permite agrupar los artículos por tema (ej: "Señales").
CREATE TABLE lawcat (
  id SERIAL PRIMARY KEY, -- Identificador único de la categoría.
  name VARCHAR(255) NOT NULL -- Nombre de la categoría de ley.
);

-- Tabla de relación artículo-categoría: Vincula los artículos con sus categorías correspondientes.
CREATE TABLE lawartcat (
  id SERIAL PRIMARY KEY, -- Identificador único de la relación.
  artid INT REFERENCES lawarticle(id) ON DELETE CASCADE, -- Clave foránea al artículo.
  catid INT REFERENCES lawcat(id) ON DELETE CASCADE -- Clave foránea a la categoría.
);