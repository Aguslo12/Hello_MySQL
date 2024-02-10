CREATE INDEX idx_name ON USERS(name); -- Nos ayuda a optimizar en sistemas grandes, la busqueda de entidades dependiendo de las reglas del sistema.

CREATE UNIQUE INDEX idx_name_surname ON USERS(name, surname);

-- DESCARTE

DROP INDEX idx_name ON users;