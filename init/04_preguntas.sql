CREATE TABLE quest (
  id    SERIAL PRIMARY KEY,
  txt   TEXT NOT NULL,
  cat   VARCHAR(100),
  lvl   VARCHAR(50),
  lawid INT REFERENCES lawarticle(id) ON DELETE SET NULL,
  qtype quest_type_enum NOT NULL DEFAULT 'multiple_choice'
);


CREATE TABLE opt (
  id SERIAL PRIMARY KEY,
  qid INT REFERENCES quest(id) ON DELETE CASCADE,
  txt TEXT NOT NULL,
  correct BOOLEAN NOT NULL 
);

CREATE TABLE ans (
  id SERIAL PRIMARY KEY,
  uid INT REFERENCES app_user(user_id),
  qid INT REFERENCES quest(id),
  optid INT REFERENCES opt(id),
  correct BOOLEAN,
  ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Evita preguntas duplicadas (mismo texto + misma ley)
CREATE UNIQUE INDEX IF NOT EXISTS uq_quest_txt_law
ON quest ((lower(regexp_replace(txt, '\s+', ' ', 'g'))), COALESCE(lawid, -1));

-- Evita opciones repetidas dentro de la misma pregunta
CREATE UNIQUE INDEX IF NOT EXISTS uq_opt_per_q
ON opt (qid, (lower(regexp_replace(txt, '\s+', ' ', 'g'))), correct);
