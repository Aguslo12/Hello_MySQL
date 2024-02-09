SELECT name, init_date AS 'Fecha de inicio en programacion' FROM users WHERE age BETWEEN 20 AND 30; /* Llama a las columnas 'name' e 'init_date' (ALIAS: Fecha de inicio en programacion) de las entidades que tengan valores entre 20 y 30 en la columna 'age' */

SELECT CONCAT('Nombre: ', name, ' Apellido: ' , surname) FROM users;

SELECT CONCAT('Nombre: ', name, ' Apellido: ' , surname) AS 'Nombre completo' FROM users;