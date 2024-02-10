delimiter // -- Definimos que el delimitante para terminar una funcion sea '//' y no el ';'

CREATE TRIGGER tg_email 
AFTER UPDATE ON users 
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN 
		INSERT INTO email_history(user_id, email) 
        VALUES (OLD.user_id, OLD.email);
    END IF;
END;
//

delimiter ;

-- DESCARTE

DROP TRIGGER tg_email
