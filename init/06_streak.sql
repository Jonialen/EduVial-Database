
-- Tabla principal de rachas de usuario
CREATE TABLE user_streak (
  streak_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL UNIQUE,
  current_streak INT DEFAULT 0,
  longest_streak INT DEFAULT 0,
  last_activity_date DATE,
  FOREIGN KEY (user_id) REFERENCES app_user(user_id) ON DELETE CASCADE
);

-- Índice para consultas rápidas
CREATE INDEX idx_user_streak_current ON user_streak(current_streak DESC);

-- Función simplificada para actualizar racha al completar lección
CREATE OR REPLACE FUNCTION update_streak_on_lesson(p_user_id INT)
RETURNS TABLE(current_streak INT, longest_streak INT, streak_continued BOOLEAN) AS $$
DECLARE
  v_today DATE := CURRENT_DATE;
  v_yesterday DATE := CURRENT_DATE - INTERVAL '1 day';
  v_last_activity DATE;
  v_current_streak INT;
  v_longest_streak INT;
  v_streak_continued BOOLEAN := FALSE;
BEGIN
  -- Obtener última fecha de actividad
  SELECT last_activity_date INTO v_last_activity
  FROM user_streak
  WHERE user_id = p_user_id;
  
  -- Si no existe registro de racha, crear uno
  IF v_last_activity IS NULL THEN
    INSERT INTO user_streak (user_id, current_streak, longest_streak, last_activity_date)
    VALUES (p_user_id, 1, 1, v_today);
    
    RETURN QUERY SELECT 1, 1, true;
    RETURN;
  END IF;
  
  -- Si ya completó lección hoy (solo 1 vez al día)
  IF v_last_activity = v_today THEN
    SELECT us.current_streak, us.longest_streak 
    INTO v_current_streak, v_longest_streak
    FROM user_streak us
    WHERE us.user_id = p_user_id;
    
    RETURN QUERY SELECT v_current_streak, v_longest_streak, false;
    RETURN;
  END IF;
  
  -- Si completó lección ayer, continuar racha
  IF v_last_activity = v_yesterday THEN
    UPDATE user_streak
    SET current_streak = current_streak + 1,
        longest_streak = GREATEST(longest_streak, current_streak + 1),
        last_activity_date = v_today
    WHERE user_id = p_user_id
    RETURNING user_streak.current_streak, user_streak.longest_streak 
    INTO v_current_streak, v_longest_streak;
    
    v_streak_continued := true;
  ELSE
    -- Racha rota, reiniciar a 1
    UPDATE user_streak
    SET current_streak = 1,
        last_activity_date = v_today
    WHERE user_id = p_user_id
    RETURNING user_streak.current_streak, user_streak.longest_streak 
    INTO v_current_streak, v_longest_streak;
    
    v_streak_continued := false;
  END IF;
  
  RETURN QUERY SELECT v_current_streak, v_longest_streak, v_streak_continued;
END;
$$ LANGUAGE plpgsql;

-- Trigger para crear registro de racha cuando se crea un usuario
CREATE OR REPLACE FUNCTION create_user_streak()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO user_streak(user_id, current_streak, longest_streak)
    VALUES (NEW.user_id, 0, 0);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_create_user_streak
AFTER INSERT ON app_user
FOR EACH ROW
EXECUTE FUNCTION create_user_streak();