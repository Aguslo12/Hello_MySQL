CREATE VIEW v_adult_users AS
SELECT name, age FROM users WHERE age >= 18;

SELECT * FROM v_adult_users -- Nos muestra solamente el nombre y la edad de las entidades mayores de edad de la tabla 'users'.

-- DESCARTE

DROP VIEW v_adult_users