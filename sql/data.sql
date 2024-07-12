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
