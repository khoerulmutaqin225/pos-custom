 UPDATE pos_config
 SET "name" = 'Reservasi'
 WHERE "name" = 'Shop'
 RETURNING id, "name"