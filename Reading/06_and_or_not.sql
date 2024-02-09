SELECT * FROM users WHERE NOT email = 'aguslobos.1712@gmail.com'; /* Llama a todas columnas de todas las entidades de la tabla 'users' que NO tengan el email determinado */

SELECT * FROM users WHERE NOT email = 'aguslobos.1712@gmail.com' AND age = 15;  /* Llama a todas columnas de todas las entidades de la tabla 'users' que NO tengan el email determinado y que la edad ('age') sea igual a 15 */

SELECT * FROM users WHERE NOT email = 'aguslobos.1712@gmail.com' OR age = 15; /* Llama a todas columnas de todas las entidades de la tabla 'users' que NO tengan el email determinado o que la edad ('age') sea igual a 15 */