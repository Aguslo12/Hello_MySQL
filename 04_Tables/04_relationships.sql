
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

-- INSERT

INSERT INTO dni (dni_number, user_id) VALUES (23123112, 1)
INSERT INTO dni (dni_number, user_id) VALUES (56237182, 2);
INSERT INTO dni (dni_number, user_id) VALUES (55437732, 3);
INSERT INTO dni (dni_number) VALUES (623746234);

INSERT INTO companies (name) VALUES ('Apple')
INSERT INTO companies (name) VALUES ('Google')
INSERT INTO companies (name) VALUES ('Netflix')

INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('C#');
INSERT INTO languages (name) VALUES ('COBOL');

INSERT INTO users_languages (user_id, language_id) VALUES (1, 1);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 5);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 5);

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 1 WHERE user_id = 2;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 5;
