Delimiter //
CREATE PROCEDURE p_all_users()
BEGIN
SELECT * FROM users;
END;
//
Delimiter ;

CALL p_all_users;

Delimiter //
CREATE PROCEDURE p_age_users(IN age_param int) -- Siempre hay que darle un nombre distinto al valor del parámetro.
BEGIN
SELECT * FROM users WHERE age = age_param;
END;
//
Delimiter ;

CALL p_all_users(30);

-- DESCARTE

DROP PROCEDURE p_age_users;