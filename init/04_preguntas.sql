-- Archivo comentado por Gemini
-- =====================================================================
-- ESTRUCTURA DE TABLAS PARA PREGUNTAS Y RESPUESTAS (NUEVO MODELO)
-- =====================================================================

-- Nota: Estas tablas parecen ser una alternativa o una extensión al modelo 
-- de 'question' y 'answer_option' del script 01. Se enfocan en vincular 
-- preguntas directamente con artículos de ley.

-- Tabla de preguntas (quest): Almacena las preguntas para los cuestionarios.
CREATE TABLE quest (
  id SERIAL PRIMARY KEY, -- Identificador único de la pregunta.
  txt TEXT NOT NULL, -- Texto completo de la pregunta.
  cat VARCHAR(100),  -- Categoría temática de la pregunta (ej: "Seguridad vial").
  lvl VARCHAR(50),   -- Nivel de dificultad de la pregunta (ej: "Básico", "Intermedio").
  lawid INT REFERENCES lawarticle(id) ON DELETE SET NULL -- ID del artículo de ley relacionado (opcional).
);

-- Tabla de opciones (opt): Almacena las posibles respuestas para cada pregunta.
CREATE TABLE opt (
  id SERIAL PRIMARY KEY, -- Identificador único de la opción.
  qid INT REFERENCES quest(id) ON DELETE CASCADE, -- ID de la pregunta a la que pertenece esta opción.
  txt TEXT NOT NULL, -- Texto de la opción de respuesta.
  correct BOOLEAN NOT NULL -- Indica si esta es la opción correcta (TRUE) o no (FALSE).
);

-- Tabla de respuestas de usuario (ans): Registra la respuesta de un usuario a una pregunta específica.
CREATE TABLE ans (
  id SERIAL PRIMARY KEY, -- Identificador único del registro de respuesta.
  uid INT REFERENCES app_user(user_id), -- ID del usuario que responde.
  qid INT REFERENCES quest(id), -- ID de la pregunta respondida.
  optid INT REFERENCES opt(id), -- ID de la opción seleccionada por el usuario.
  correct BOOLEAN, -- Indica si la respuesta fue correcta.
  ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha y hora en que se registró la respuesta.
);