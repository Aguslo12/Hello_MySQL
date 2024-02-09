SELECT * FROM users WHERE email LIKE '%gmail.com'; /* Llama a todos las columnas de la tabla 'users' donde 'email' termine con 'gmail.com' */

SELECT * FROM users WHERE email LIKE 'jus%'; /* Llama a todos las columnas de la tabla 'users' donde 'email' empiece con 'jus' */

SELECT * FROM users WHERE email LIKE '%@%'; /* Llama a todos las columnas de la tabla 'users' donde 'email' tenga cualquier cosa antes y despues del '@' */