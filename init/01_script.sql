-- =========================
-- 01_script.sql 
-- =========================
SET search_path TO public;

-- Tipos ENUM
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname='question_type_enum') THEN
    CREATE TYPE question_type_enum AS ENUM ('multiple_choice','true_false','short_answer');
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname='question_category_enum') THEN
    CREATE TYPE question_category_enum AS ENUM ('Señales','Simulaciones','Escenarios');
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname='user_role_enum') THEN
    CREATE TYPE user_role_enum AS ENUM ('admin','student','instructor');
  END IF;
END$$;

-- Usuarios (nombre real en producción: "USER")
DROP TABLE IF EXISTS "USER" CASCADE;
CREATE TABLE "USER" (
  user_id  SERIAL PRIMARY KEY,
  name     VARCHAR(100) NOT NULL,
  email    VARCHAR(100) NOT NULL UNIQUE,
  password CHAR(60)     NOT NULL,
  role     user_role_enum NOT NULL
);

-- Vista de compatibilidad (si algún código todavía usa app_user)
DROP VIEW IF EXISTS app_user;
CREATE VIEW app_user AS
SELECT user_id, name, email, password, role
FROM "USER";

-- Exámenes
DROP TABLE IF EXISTS exam CASCADE;
CREATE TABLE exam (
  exam_id          SERIAL PRIMARY KEY,
  title            TEXT NOT NULL,
  description      TEXT,
  difficulty_level VARCHAR(50),
  points_awarded   INT
);

-- Preguntas
DROP TABLE IF EXISTS question CASCADE;
CREATE TABLE question (
  question_id   SERIAL PRIMARY KEY,
  question_text TEXT,
  question_type question_type_enum NOT NULL DEFAULT 'multiple_choice',
  category      question_category_enum
);

-- Opciones de respuesta
DROP TABLE IF EXISTS answer_option CASCADE;
CREATE TABLE answer_option (
  option_id    SERIAL PRIMARY KEY,
  question_id  INT NOT NULL REFERENCES question(question_id) ON DELETE CASCADE,
  option_text  TEXT NOT NULL,
  is_correct   BOOLEAN NOT NULL DEFAULT FALSE
);
-- Índice parcial: como máximo 1 correcta por pregunta
DROP INDEX IF EXISTS ux_answer_option_one_correct;
CREATE UNIQUE INDEX ux_answer_option_one_correct
  ON answer_option (question_id)
  WHERE is_correct = TRUE;

-- Relación examen-pregunta
DROP TABLE IF EXISTS exam_question CASCADE;
CREATE TABLE exam_question (
  exam_id     INT NOT NULL REFERENCES exam(exam_id) ON DELETE CASCADE,
  question_id INT NOT NULL REFERENCES question(question_id) ON DELETE CASCADE,
  PRIMARY KEY (exam_id, question_id)
);

-- Intentos y respuestas del usuario
DROP TABLE IF EXISTS exam_attempt CASCADE;
CREATE TABLE exam_attempt (
  attempt_id    SERIAL PRIMARY KEY,
  user_id       INT NOT NULL REFERENCES "USER"(user_id),
  exam_id       INT NOT NULL REFERENCES exam(exam_id),
  started_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  completed_at  TIMESTAMP,
  score         INT DEFAULT 0,
  status        VARCHAR(50) NOT NULL CHECK (status IN ('in_progress','completed','abandoned'))
);

DROP TABLE IF EXISTS user_answer CASCADE;
CREATE TABLE user_answer (
  user_answer_id SERIAL PRIMARY KEY,
  attempt_id     INT NOT NULL REFERENCES exam_attempt(attempt_id) ON DELETE CASCADE,
  question_id    INT NOT NULL REFERENCES question(question_id) ON DELETE CASCADE,
  option_id      INT REFERENCES answer_option(option_id) ON DELETE SET NULL,
  answered_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Lecciones, progreso, gamificación (tal cual tu BD)
DROP TABLE IF EXISTS lesson CASCADE;
CREATE TABLE lesson (
  lesson_id        SERIAL PRIMARY KEY,
  title            TEXT,
  description      TEXT,
  difficulty_level VARCHAR(50),
  points_awarded   INT
);

DROP TABLE IF EXISTS lesson_category CASCADE;
CREATE TABLE lesson_category (
  category_id   SERIAL PRIMARY KEY,
  category_name TEXT
);

DROP TABLE IF EXISTS lesson_category_rel CASCADE;
CREATE TABLE lesson_category_rel (
  lesson_id   INT REFERENCES lesson(lesson_id) ON DELETE CASCADE,
  category_id INT REFERENCES lesson_category(category_id) ON DELETE CASCADE,
  PRIMARY KEY (lesson_id, category_id)
);

DROP TABLE IF EXISTS lesson_result CASCADE;
CREATE TABLE lesson_result (
  lesson_result_id SERIAL PRIMARY KEY,
  user_id          INT REFERENCES "USER"(user_id),
  lesson_id        INT REFERENCES lesson(lesson_id),
  score            INT,
  date             DATE
);

DROP TABLE IF EXISTS progress CASCADE;
CREATE TABLE progress (
  progress_id     SERIAL PRIMARY KEY,
  user_id         INT REFERENCES "USER"(user_id),
  lesson_id       INT REFERENCES lesson(lesson_id),
  status          VARCHAR(50),
  completion_date TIMESTAMP
);

DROP TABLE IF EXISTS leaderboard CASCADE;
CREATE TABLE leaderboard (
  leaderboard_id SERIAL PRIMARY KEY,
  user_id        INT REFERENCES "USER"(user_id),
  position       INT,
  total_points   INT
);

DROP TABLE IF EXISTS reward CASCADE;
CREATE TABLE reward (
  reward_id   SERIAL PRIMARY KEY,
  name        TEXT,
  description TEXT,
  cost_points INT
);

DROP TABLE IF EXISTS reward_redemption CASCADE;
CREATE TABLE reward_redemption (
  redemption_id SERIAL PRIMARY KEY,
  user_id       INT REFERENCES "USER"(user_id),
  reward_id     INT REFERENCES reward(reward_id),
  date          DATE
);

-- Leyes (según 03_laws.sql)
DROP TABLE IF EXISTS lawcat CASCADE;
CREATE TABLE lawcat (
  id   SERIAL PRIMARY KEY,
  name TEXT
);

DROP TABLE IF EXISTS lawarticle CASCADE;
CREATE TABLE lawarticle (
  id     SERIAL PRIMARY KEY,
  artnum VARCHAR(10) NOT NULL,
  title  VARCHAR(255) NOT NULL,
  descr  TEXT NOT NULL,
  sanc   TEXT
);

DROP TABLE IF EXISTS lawartcat CASCADE;
CREATE TABLE lawartcat (
  id    SERIAL PRIMARY KEY,
  artid INT NOT NULL REFERENCES lawarticle(id) ON DELETE CASCADE,
  catid INT NOT NULL REFERENCES lawcat(id) ON DELETE CASCADE
);
