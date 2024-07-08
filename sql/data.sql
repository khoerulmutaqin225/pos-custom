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
WHERE pc.name IN ('Facilities rent', 'Jetty and Mat. Handling', 'Other Support Service')
AND NOT EXISTS (
    SELECT 1
    FROM pos_category_pos_config_rel pcr
    WHERE pcr.pos_config_id = 1
    AND pcr.pos_category_id = pc.id
);
