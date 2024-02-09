SELECT * FROM users ORDER BY age; /* Llama a todas columnas de todas las entidades de la tabla 'users' y las ordena por edad ('age') */

SELECT * FROM users ORDER BY age ASC; /* Llama a todas columnas de todas las entidades de la tabla 'users' y las ordena por edad ('age') de forma ascendente (predeterminado) */

SELECT * FROM users ORDER BY age DESC;  /* Llama a todas columnas de todas las entidades de la tabla 'users' y las ordena por edad ('age') de forma descendente */

SELECT * FROM users WHERE email='aguslobos.1712@gmail.com' ORDER BY age DESC; /* Llama a todas columnas de todas las entidades de la tabla 'users' que tengan el email determinado y las ordena por edad ('age') de forma descendente */

SELECT name FROM users WHERE email='aguslobos.1712@gmail.com' ORDER BY age DESC;  /* Llama a la columna 'name' de todas las entidades de la tabla 'users' y las ordena por edad ('age') de forma descendente */