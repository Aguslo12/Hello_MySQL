SELECT *, -- Sin el coma NO funciona
CASE 
	WHEN age < 17 THEN 'Mayor de edad.'
    ELSE 'Menor de edad.'
END AS agetext -- El 'AS' crea el alias en la columna, sino sería una columna mostrando la case, en resumen desastroso.
FROM users;
-- Trae a todas las columnas de las entidades de la tabla 'users' y crea una nueva columna llamada 'agetext' que cumple el case.

SELECT *,
CASE 
	WHEN age < 17 THEN True
    ELSE False
END AS agetext
FROM users;
-- Hace lo mismo pero representa si la entidad es o no mayor de edad de forma booleana.