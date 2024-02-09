
/*
  (RELACION 1:1)
*/

CREATE TABLE dni ( -- Se relaciona con una 'FOREIGN KEY' en la que cada entidad de la tabla 'users' tiene relacion con la columna 'user_id' de la tabla 'dni'.
	dni_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id, dni_number),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

/*
  (RELACION 1:N)
*/

CREATE TABLE companies( -- Creamos la tabla compañías.
	company_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

ALTER TABLE users -- Relacionamos a que cada caompañia tenga a un usario.
ADD CONSTRAINT fk_companies 
FOREIGN KEY(company_id) REFERENCES companies(company_id)

/*
  (RELACION N:N)
*/

CREATE TABLE languages( -- Creamos tabla de lenguajes de programación.
	language_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

CREATE TABLE users_languages( -- Creamos las relaciones que tienen los usuarios con cada lenguaje.
	user_language_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    langugage_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);