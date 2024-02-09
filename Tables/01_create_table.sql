CREATE TABLE persons ( -- Tabla con definicion de valores de columnas.
id int,
name varchar(20),
age int,
email varchar(50),
created date
);

CREATE TABLE persons2 ( -- Tabla con restricciones no nulas (NOT NULL).
id int NOT NULL ,
name varchar(20) NOT NULL,
age int,
email varchar(50),
created date
);

CREATE TABLE persons3( -- Tabla con restricciones no nulas (NOT NULL) y con columna única (UNIQUE).
id int NOT NULL ,
name varchar(20) NOT NULL,
age int,
email varchar(50),
created datetime,
UNIQUE(id)
);

CREATE TABLE persons4( -- Tabla definiendo su primary key.
id int NOT NULL ,
name varchar(20) NOT NULL,
age int,
email varchar(50),
created datetime,
UNIQUE (id),
PRIMARY KEY (id)
);

CREATE TABLE persons5( -- Tabla con restricción CHECK.
id int NOT NULL ,
name varchar(20) NOT NULL,
age int,
email varchar(50),
created datetime,
UNIQUE (id),
PRIMARY KEY (id),
CHECK (age>=18)
);

CREATE TABLE persons6( -- Tabla con definción default a la columna 'created'.
id int NOT NULL ,
name varchar(20) NOT NULL,
age int,
email varchar(50),
created datetime DEFAULT CURRENT_TIMESTAMP(),
UNIQUE (id),
PRIMARY KEY (id),
CHECK (age>=18)
);

CREATE TABLE persons7( -- Tabla con definición de que la columna se incremente con el valor guardado dentro del sistema (AUTO_INCREMENT).
id int NOT NULL AUTO_INCREMENT,
name varchar(20) NOT NULL,
age int,
email varchar(50),
created datetime DEFAULT CURRENT_TIMESTAMP(),
UNIQUE (id),
PRIMARY KEY (id),
CHECK (age>=18)
);
