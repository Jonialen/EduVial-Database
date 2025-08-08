
-- Insertar roles de usuario 
-- Solo si la tabla de usuarios necesita al menos un admin inicial para gestionar la app
INSERT INTO "USER" (name, email, password, role)
VALUES
('Administrador', 'admin@example.com', 'hashed_password_admin', 'admin')
ON CONFLICT (email) DO NOTHING;

-- Insertar categorías de lecciones base (si la app requiere )
INSERT INTO lesson_category (category_id, category_name) VALUES
(1, 'Seguridad Vial'),
(2, 'Normas de Conducción')
ON CONFLICT (category_id) DO NOTHING;

-- Insertar recompensas base (si son necesarias para el sistema de puntos)
INSERT INTO reward (reward_id, name, description, cost_points) VALUES
(1, 'Insignia Principiante', 'Recompensa por completar el nivel básico', 100),
(2, 'Insignia Avanzada', 'Recompensa por completar el nivel avanzado', 200)
ON CONFLICT (reward_id) DO NOTHING;
