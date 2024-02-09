SELECT * FROM users WHERE email IS NULL; -- Llama a todas las columnas de las entidades en la tabla 'users' que tengan la columna 'email' nula (NULL)

SELECT * FROM users WHERE email IS NOT NULL; -- Llama a todas las columnas de las entidades en la tabla 'users' que NO tengan la columna 'email' nula (NULL)

SELECT name, surname, IFNULL(age,0) AS age FROM users; -- LLama a las columnas 'name', 'surname y 'age' de todas las entidades de la tabla 'users' y las que tengan el valor 'NULL' en 'age', le cambia el valor a un 0, y le pone nuevamente el alias 'age'.