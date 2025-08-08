
-- \d question

-- === Ver una pregunta específica ===
SELECT question_id, question_text, question_type, category
FROM question
WHERE question_id = 1;

-- === Filtrar por categoría ===
SELECT question_id, question_text, question_type, category
FROM question
WHERE category = 'Señales'
ORDER BY question_id;

-- === Contar por categoría ===
SELECT category, COUNT(*)
FROM question
GROUP BY category;

-- === Exportar una pregunta a JSON ===
SELECT row_to_json(q) AS question
FROM (
  SELECT question_id, question_text, question_type, category
  FROM question
  WHERE question_id = 1
) q;

-- === Exportar lista por categoría a JSON ===
SELECT json_agg(q) AS questions
FROM (
  SELECT question_id, question_text, question_type, category
  FROM question
  WHERE category = 'Simulaciones'
  ORDER BY question_id
) q;

-- === Traer preguntas + opciones en una sola consulta JSON ===
-- Requiere que existan registros en answer_option para esas preguntas
SELECT json_agg(result) AS questions_with_options
FROM (
  SELECT
    q.question_id,
    q.question_text,
    q.question_type,
    q.category,
    COALESCE(
      (SELECT json_agg(json_build_object(
          'option_id', ao.option_id,
          'option_text', ao.option_text,
          'is_correct', ao.is_correct
        ) ORDER BY ao.option_id)
       FROM answer_option ao
       WHERE ao.question_id = q.question_id),
      '[]'::json
    ) AS options
  FROM question q
  WHERE q.category = 'Escenarios'
  ORDER BY q.question_id
) result;
