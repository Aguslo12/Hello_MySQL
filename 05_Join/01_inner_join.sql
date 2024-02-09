
-- RELACION 1:1

SELECT * FROM users
INNER JOIN dni;

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

SELECT * FROM users -- Une la tabla 'users' con la tabla 'dni' y muestra todas sus columnas relacionadas con los ID de cada entidad.
JOIN dni
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM users -- Une la tabla users con la tabla dni y muestra solo los nombres de las entidades con su dni relacionado.
JOIN dni
ON users.user_id = dni.user_id;

-- RELACION 1:N

SELECT * FROM users -- Une la tabla 'users' con la tabla 'companies' y muestra todas sus columnas relacionadas con los ID de cada entidad.
JOIN companies
ON users.company_id = companies.company_id

SELECT companies.name, users.name FROM companies -- Une la tabla 'users' con la tabla 'companies' y muestra solo los nombres de las entidades y companñías con su ID relacionado.
ON users.company_id = companies.company_id

-- RELACION N:M

SELECT * FROM users_languages -- Une la tabla 'users' con la tabla 'languages' a través de la tabla que los relaciona ('users_languages') y muestra todas las columnas de las entidades con el ID relacionado
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id

SELECT users.name, languages.name FROM users_languages -- Une la tabla 'users' con la tabla 'languages' a través de la tabla que los relaciona ('users_languages') y muestra las columnas de nombres de usuarios y nombre de lenguajes con su ID relacionado
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id
