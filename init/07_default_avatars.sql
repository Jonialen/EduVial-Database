-- 07_default_avatars.sql
BEGIN;

-- 1) Tabla de avatares predeterminados
CREATE TABLE IF NOT EXISTS default_avatar (
    avatar_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    filename TEXT NOT NULL,
    url TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- 2) Tabla intermedia: conecta usuarios con avatares
CREATE TABLE IF NOT EXISTS user_avatar (
    user_avatar_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES app_user(user_id) ON DELETE CASCADE,
    avatar_id INT NOT NULL REFERENCES default_avatar(avatar_id) ON DELETE CASCADE,
    is_active BOOLEAN DEFAULT TRUE,
    assigned_at TIMESTAMP DEFAULT NOW()
);

-- Índices
CREATE INDEX IF NOT EXISTS idx_user_avatar_user ON user_avatar(user_id);
CREATE INDEX IF NOT EXISTS idx_user_avatar_active ON user_avatar(user_id, is_active);

-- Índice único parcial: un usuario solo puede tener UN avatar activo
CREATE UNIQUE INDEX IF NOT EXISTS idx_user_avatar_unique_active 
ON user_avatar(user_id) 
WHERE is_active = TRUE;

COMMIT;

-- NOTAS:
-- 1) user_avatar es la tabla de conexión usuario-foto
-- 2) is_active permite historial (cambiar de avatar sin perder el anterior)
-- 3) Para obtener el avatar actual de un usuario:
--    SELECT da.* FROM default_avatar da
--    JOIN user_avatar ua ON da.avatar_id = ua.avatar_id
--    WHERE ua.user_id = ? AND ua.is_active = TRUE;