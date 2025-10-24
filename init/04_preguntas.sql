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


