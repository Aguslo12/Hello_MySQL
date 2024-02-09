SELECT * FROM users -- El RIGHT JOIN siempre nos trae todos los datos de la tabla de la derecha. Trae todas las entidades de la tabla 'dni' aunque no esten relacionados con alguna entidad de la tabla 'users'. 
RIGHT JOIN dni
ON users.user_id = dni.user_id;