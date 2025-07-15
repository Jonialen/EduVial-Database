-- Crear tipo ENUM para question_type
CREATE TYPE question_type_enum AS ENUM ('multiple_choice', 'true_false', 'short_answer');

-- Crear tipo ENUM para roles
CREATE TYPE user_role_enum AS ENUM ('admin', 'principiante', 'avanzado');

-- Crear tipo ENUM para estado de progreso
CREATE TYPE progress_status_enum AS ENUM ('no_completado', 'en_progreso', 'completado');

-- Crear tipo ENUM para dificultad de lecciones o examenes
CREATE TYPE difficulty_level_enum AS ENUM ('simple', 'advanced');

-- Tabla de usuarios (rol directo como ENUM)
CREATE TABLE app_user (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password CHAR(60) NOT NULL,
  role user_role_enum NOT NULL
);

-- Tabla de lecciones
CREATE TABLE lesson (
  lesson_id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  difficulty_level difficulty_level_enum not NULL,
  points_awarded INT NOT NULL DEFAULT 0
);

-- Tabla de categorías
CREATE TABLE lesson_category (
  category_id SERIAL PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL UNIQUE
);

-- Relación lección-categoría
CREATE TABLE lesson_category_rel (
  lesson_id INT NOT NULL,
  category_id INT NOT NULL,
  PRIMARY KEY (lesson_id, category_id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id),
  FOREIGN KEY (category_id) REFERENCES lesson_category(category_id)
);

-- Tabla de exámenes
CREATE TABLE exam (
  exam_id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  difficulty_level difficulty_level_enum not NULL,
  points_awarded INT NOT NULL DEFAULT 0
);

-- Progreso de lecciones (usando el nuevo ENUM para estado)
CREATE TABLE progress (
  progress_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  lesson_id INT NOT NULL,
  status progress_status_enum NOT NULL DEFAULT 'no_completado',
  completion_date TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id)
);

-- Progreso de exámenes (usando el nuevo ENUM para estado)
CREATE TABLE exam_progress (
  exam_progress_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  exam_id INT NOT NULL,
  status progress_status_enum NOT NULL DEFAULT 'no_completado',
  completion_date TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (exam_id) REFERENCES exam(exam_id)
);

-- Resultados de exámenes
CREATE TABLE exam_result (
  exam_result_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  exam_id INT NOT NULL,
  score INT NOT NULL,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (exam_id) REFERENCES exam(exam_id)
);

-- Resultados de lecciones
CREATE TABLE lesson_result (
  lesson_result_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  lesson_id INT NOT NULL,
  score INT NOT NULL,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id)
);

-- Puntaje acumulado por usuario
CREATE TABLE user_score (
  score_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  total_points INT DEFAULT 0,
  FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);

-- Recompensas
CREATE TABLE reward (
  reward_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  description TEXT,
  cost_points INT NOT NULL
);

-- Canje de recompensas
CREATE TABLE reward_redemption (
  redemption_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  reward_id INT NOT NULL,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (reward_id) REFERENCES reward(reward_id)
);

-- Tabla de ranking
CREATE TABLE leaderboard (
  leaderboard_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  position INT NOT NULL,
  total_points INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);

-- Preguntas
CREATE TABLE question (
  question_id SERIAL PRIMARY KEY,
  question_text TEXT,
  question_type question_type_enum
);

-- Relación examen-pregunta
CREATE TABLE exam_question (
  exam_id INT NOT NULL,
  question_id INT NOT NULL,
  PRIMARY KEY (exam_id, question_id),
  FOREIGN KEY (exam_id) REFERENCES exam(exam_id),
  FOREIGN KEY (question_id) REFERENCES question(question_id)
);

-- Opciones de respuesta
CREATE TABLE answer_option (
  option_id SERIAL PRIMARY KEY,
  question_id INT NOT NULL,
  option_text TEXT,
  is_correct BOOLEAN,
  FOREIGN KEY (question_id) REFERENCES question(question_id)
);

-- Historial de notificaciones
CREATE TABLE notification_history (
  notification_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  message TEXT,
  sent_date TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);

-- Logs del sistema
CREATE TABLE log (
  log_id SERIAL PRIMARY KEY,
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  username VARCHAR(100) NOT NULL,
  affected_table VARCHAR(100) NOT NULL,
  operation VARCHAR(50) NOT NULL,
  details TEXT
);

-- Tabla de articulos
CREATE TABLE lawarticle (
  id SERIAL PRIMARY KEY,
  artnum VARCHAR(10) NOT NULL,
  title VARCHAR(255) NOT NULL,
  descr TEXT NOT NULL,
  sanc TEXT
);

--Tabla de relaciones
CREATE TABLE lawcat (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

--Tabla de categoria de articulo
CREATE TABLE lawartcat (
  id SERIAL PRIMARY KEY,
  artid INT REFERENCES lawarticle(id) ON DELETE CASCADE,
  catid INT REFERENCES lawcat(id) ON DELETE CASCADE
);
