SELECT * FROM users LIMIT 3; /* Llama a todas las columnas de las entidades en la tabla 'users' pero limita las entidades llamadas a 3 */

SELECT * FROM users WHERE email = 'aguslobos.1712@gmail.com' OR age = 15 LIMIT 2; /* Llama a todas columnas de todas las entidades de la tabla 'users' que NO tengan el email determinado o que la edad ('age') sea igual a 15 y limita las entidades llamadas a 2 */