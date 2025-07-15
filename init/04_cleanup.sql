-- Eliminar tabla de puntaje duplicada
DROP TABLE IF EXISTS user_score;

-- Eliminar tablas no incluidas en los scripts iniciales
DROP TABLE IF EXISTS quest;
DROP TABLE IF EXISTS ans;
DROP TABLE IF EXISTS opt;

-- Eliminar tablas no utilizadas por el backend
DROP TABLE IF EXISTS log;
DROP TABLE IF EXISTS notification_history;
