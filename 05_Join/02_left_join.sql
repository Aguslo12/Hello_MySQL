SELECT * FROM users -- El LEFT JOIN siempre nos trae todos los datos de la tabla de la izquierda. Trae todas las entidades de la tabla 'users' aunque no esten relacionados con alguna entidad de la tabla 'dni'. 
LEFT JOIN dni 
ON users.user_id = dni.user_id

SELECT name, dni_number FROM users -- Llama a todas las columnas 'name' de las entidades 'users' y las columnas de 'dni_number' que solo estan relacionadas con alguna entidad 'users'.
LEFT JOIN dni
ON users.user_id = dni.user_id;

