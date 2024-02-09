ALTER TABLE persons7 -- Añade una nueva columna
ADD surname varchar(150);.

ALTER TABLE persons7 -- Cambia el nombre de una columna.
RENAME COLUMN surname TO description;

ALTER TABLE persons7 -- Actualización del tipo de columna.
MODIFY COLUMN description varchar(250);

ALTER TABLE persons7 -- Eliminación de columna
DROP COLUMN description;