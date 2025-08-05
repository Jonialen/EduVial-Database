-- 1. Crear tabla exam_attempt
CREATE TABLE IF NOT EXISTS exam_attempt (
  attempt_id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL REFERENCES "USER"(user_id),
  exam_id INTEGER NOT NULL REFERENCES exam(exam_id),
  started_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  completed_at TIMESTAMP,
  score INTEGER DEFAULT 0,
  status VARCHAR(50) NOT NULL CHECK (status IN ('in_progress', 'completed', 'abandoned'))
);

-- 2. Crear tabla user_answer
CREATE TABLE IF NOT EXISTS user_answer (
  user_answer_id SERIAL PRIMARY KEY,
  attempt_id INTEGER NOT NULL REFERENCES exam_attempt(attempt_id),
  question_id INTEGER NOT NULL REFERENCES question(question_id),
  option_id INTEGER REFERENCES answer_option(option_id),
  answered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Insertar registros migrados desde exam_result y exam_progress
INSERT INTO exam_attempt (user_id, exam_id, score, started_at, completed_at, status)
VALUES
  (1, 1, 90, '2025-03-15 14:00:00', '2025-03-15 14:10:00', 'completed'),
  (2, 1, 0, CURRENT_TIMESTAMP, NULL, 'in_progress'),
  (3, 2, 85, '2025-03-16 16:00:00', '2025-03-16 16:10:00', 'completed');

-- 4. Eliminar tablas antiguas
DROP TABLE IF EXISTS exam_result;
DROP TABLE IF EXISTS exam_progress;
