
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

-- Vista de compatibilidad 
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

-- Lecciones, progreso, gamificación 
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

-- Leyes 
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

-- 1) Agregar 'intermedio' a public.user_role_enum 
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM pg_type t
    WHERE t.typname = 'user_role_enum' AND t.typnamespace = 'public'::regnamespace
  ) THEN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_enum e
      JOIN pg_type t ON t.oid = e.enumtypid
      WHERE t.typname = 'user_role_enum'
        AND t.typnamespace = 'public'::regnamespace
        AND e.enumlabel = 'intermedio'
    ) THEN
      ALTER TYPE public.user_role_enum
        ADD VALUE 'intermedio' AFTER 'principiante';
    END IF;
  END IF;
END$$;

-- 2) Forzar que question_type_enum tenga SOLO 'multiple_choice'
DO $$
DECLARE
  cnt_otros INT;
BEGIN
  -- ¿Hay valores distintos de 'multiple_choice' en el enum actual?
  SELECT COUNT(*)
    INTO cnt_otros
  FROM pg_enum e
  JOIN pg_type t ON t.oid = e.enumtypid
  WHERE t.typname = 'question_type_enum'
    AND t.typnamespace = 'public'::regnamespace
    AND e.enumlabel <> 'multiple_choice';

  IF cnt_otros > 0 THEN
    -- Crear tipo nuevo si hiciera falta
    IF NOT EXISTS (
      SELECT 1 FROM pg_type
      WHERE typname = 'question_type_enum_new'
        AND typnamespace = 'public'::regnamespace
    ) THEN
      EXECUTE 'CREATE TYPE public.question_type_enum_new AS ENUM (''multiple_choice'')';
    END IF;

    -- Migrar la columna question.question_type al tipo nuevo (forzando 'multiple_choice')
    IF EXISTS (
      SELECT 1
      FROM information_schema.columns
      WHERE table_schema = 'public'
        AND table_name = 'question'
        AND column_name = 'question_type'
    ) THEN
      EXECUTE $SQL$
        ALTER TABLE public.question
          ALTER COLUMN question_type TYPE public.question_type_enum_new
          USING 'multiple_choice'::public.question_type_enum_new;
      $SQL$;
    END IF;

    -- Reemplazar el tipo antiguo por el nuevo
    EXECUTE 'DROP TYPE public.question_type_enum';
    EXECUTE 'ALTER TYPE public.question_type_enum_new RENAME TO question_type_enum';

    -- Asegurar el DEFAULT en la columna 
    IF EXISTS (
      SELECT 1
      FROM information_schema.columns
      WHERE table_schema = 'public'
        AND table_name = 'question'
        AND column_name = 'question_type'
    ) THEN
      EXECUTE $SQL$
        ALTER TABLE public.question
          ALTER COLUMN question_type SET DEFAULT 'multiple_choice';
      $SQL$;
    END IF;
  END IF;
END$$;