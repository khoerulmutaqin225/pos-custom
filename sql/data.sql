-- Odoo data.sql format
UPDATE pos_config
SET name = 'Reservasi'
WHERE name = 'Shop';

UPDATE pos_config
SET start_category = 'False'
WHERE name = 'Reservasi';


UPDATE pos_config
SET limit_categories = 'True'
WHERE name = 'Reservasi';

INSERT INTO pos_category_pos_config_rel (pos_config_id, pos_category_id)
SELECT 1, pc.id
FROM pos_category pc
WHERE pc.name IN ('Facilities rent', 'Jetty and Mat. Handling', 'Other Support Service');