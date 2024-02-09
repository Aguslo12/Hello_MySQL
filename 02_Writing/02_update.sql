UPDATE users SET age = '21' WHERE user_id = 8 -- El filtrado en los updates (WHERE) son súper importantes para no arruinar la base de datos

UPDATE users SET age = '21', init_date = '2020-10-22' WHERE user_id = 8