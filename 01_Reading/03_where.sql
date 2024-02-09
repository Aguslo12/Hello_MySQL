SELECT * FROM users WHERE age = 15; /* Llama a todas las entidades que tengan la columna 'age' igual a 15 en la tabla 'users' */

SELECT name FROM users WHERE age = 15; /* Llama a la columna 'name' de todas las entidades que tengan la columna 'age' igual a 15 en la tabla 'users' */

SELECT DISTINCT name FROM users WHERE age = 15; /* Llama a la columna 'name' de todas las entidades que tengan 'name' distinto y que la columna 'age' sea igual a 15 en la tabla 'users' */

SELECT DISTINCT age FROM users WHERE age = 15; /* Llama a la columna 'age' de todas las entidades que tengan 'age' distinto y que la columna 'age' sea igual a 15 en la tabla 'users' */