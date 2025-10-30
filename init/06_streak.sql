-- 06_streak.sql — Racha DIARIA por login (simple)

CREATE TABLE IF NOT EXISTS user_streak (
  user_id INT PRIMARY KEY REFERENCES app_user(user_id) ON DELETE CASCADE,
  current_streak INT NOT NULL DEFAULT 0,
  longest_streak INT NOT NULL DEFAULT 0,
  last_activity_date DATE
);

CREATE OR REPLACE FUNCTION bump_daily_streak(p_user_id INT)
RETURNS TABLE(current_streak INT, longest_streak INT)
LANGUAGE plpgsql
AS $$
DECLARE
  today DATE := (now() AT TIME ZONE 'America/Guatemala')::date;
  yesterday DATE := ((now() AT TIME ZONE 'America/Guatemala')::date - 1);
  r RECORD;
BEGIN
  SELECT * INTO r
  FROM user_streak
  WHERE user_id = p_user_id
  FOR UPDATE;

  IF NOT FOUND THEN
    INSERT INTO user_streak(user_id, current_streak, longest_streak, last_activity_date)
    VALUES (p_user_id, 1, 1, today)
    RETURNING user_streak.current_streak, user_streak.longest_streak INTO r.current_streak, r.longest_streak;
    RETURN QUERY SELECT r.current_streak, r.longest_streak;
    RETURN;
  END IF;

  IF r.last_activity_date = today THEN
    RETURN QUERY SELECT r.current_streak, r.longest_streak;
    RETURN;
  END IF;

  IF r.last_activity_date = yesterday THEN
    UPDATE user_streak
       SET current_streak = r.current_streak + 1,
           longest_streak = GREATEST(r.longest_streak, r.current_streak + 1),
           last_activity_date = today
     WHERE user_id = p_user_id
     RETURNING user_streak.current_streak, user_streak.longest_streak INTO r.current_streak, r.longest_streak;
    RETURN QUERY SELECT r.current_streak, r.longest_streak;
    RETURN;
  END IF;

  UPDATE user_streak
     SET current_streak = 1,
         last_activity_date = today
   WHERE user_id = p_user_id
   RETURNING user_streak.current_streak, user_streak.longest_streak INTO r.current_streak, r.longest_streak;

  RETURN QUERY SELECT r.current_streak, r.longest_streak;
END;
$$;
