-- Disable foreign key checks to prevent ordering issues during insertion
SET FOREIGN_KEY_CHECKS = 0;

-- Clean existing data to prevent duplicate key errors
TRUNCATE TABLE cart_item;
TRUNCATE TABLE products;
TRUNCATE TABLE users;

-- Insert Users
INSERT INTO users (id, address, email, name, password, phone, username) VALUES 
(31, 'Somewhere', 'user@example.com', 'user@example.com', '$2a$10$Erpu59oI2N.GJ4QVFB8fgeKRh1qPS.TbFaXI3itO4RdCbuohqBSlW', '8169999999', 'newuser'),
(39, '9999 Somewhere Boulevard, The City, State, Country, 88888', 'jendoe@email.com', 'Jen Doe', '$2a$10$nmuNNoNrR8W/c.nwE0G5iOiK4ZnPMLNPm5gP1rh0P4DuUEnYCClNK', '8169969999', 'jendoe'),
(41, 'Somewhere', 'marydoe@email.com', 'Mary Doe', '$2a$10$9tsdZ0xSjTz0AiIU18EPIOeC0EFuSI3aGI.hjz5Im2/JekWufFMUW', '8167777777', 'marydoe');

-- Insert Products
INSERT INTO products (id, added_on, description, name, price) VALUES 
(1, '2021-03-06 20:50:34.44', 'The greatest smartphone to ever exist in the history of humanity', 'Salsa', 6.99),
(3, '2021-03-06 20:50:34.44', 'Premium quality item', 'Product 3', 19.99),
(5, '2021-03-06 20:50:34.44', 'Essential gadget', 'Product 5', 29.99),
(6, '2021-03-06 20:50:34.44', 'Latest version', 'Product 6', 49.99);

-- Insert Cart Items
INSERT INTO cart_item (added_on, quantity, product_id, user_id) VALUES 
('2021-03-08 10:36:37.295', 9, 1, 39),
('2021-03-08 10:36:41.386', 1, 3, 39),
('2021-03-08 19:04:17.776', 1, 3, 41),
('2021-03-08 10:36:49.817', 3, 5, 39),
('2021-03-08 19:04:21.589', 1, 5, 41),
('2021-03-08 20:21:29.638', 1, 6, 39);

SET FOREIGN_KEY_CHECKS = 1;