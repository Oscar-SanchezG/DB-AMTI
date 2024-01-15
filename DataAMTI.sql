USE bejqqu8iuangvflxepsu;

-- Borrar regristros
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE productSupplier;
TRUNCATE TABLE product;
TRUNCATE TABLE productType;
TRUNCATE TABLE supplier;
TRUNCATE TABLE useri;
SET FOREIGN_KEY_CHECKS = 1;

-- INSERT Suppliers
INSERT INTO supplier (name, description) VALUES
('InnovateTech Solutions', 'Descripción del Proveedor 1'),
('BioHarvest Innovations', 'Descripción del Proveedor 2'),
('Quantum Logistics', 'Descripción del Proveedor 3'),
('ProVision Enterprises', 'Descripción del Proveedor 4'),
('EcoPower Solutions', 'Descripción del Proveedor 5');

-- INSERT ProductTypes
INSERT INTO productType (name, description) VALUES
('Electrónicos', 'Productos electrónicos para el hogar'),
('Muebles', 'Muebles elegantes y duraderos'),
('Deportes', 'Artículos deportivos para todas las edades'),
('Hogar', 'Artículos para el hogar y decoración');
-- INSERT Products
INSERT INTO product (id_type_fk, key_product, name, available,price, description) VALUES
(2, 'ABC123', 'Silla de oficina', 1, 21.26, 'Description for Product1'),
(3, 'DEF456', 'Patines en línea', 0, 28.45, 'Description for Product2'),
(1, 'GHI789', 'Smartphone', 1, 17.93,'Description for Product3'),
(4, 'JKL012', 'Toallas de baño', 0, 40.10, 'Description for Product4'),
(3, 'MNO345', 'Equipo de yoga', 1, 24.30, 'Description for Product5'),
(4, 'PQR678', 'Cortinas', 1, 22.60, 'Description for Product6'),
(2, 'STU901', 'Estantería', 0, 29.99, 'Description for Product7'),
(3, 'VWX234', 'Casco para ciclismo', 1, 18.10,'Description for Product8'),
(4, 'YZA567', 'Sábanas y fundas de almohada', 0, 25.90,'Description for Product9'),
(2, 'BCD890', 'Sillón reclinable', 1, 36.27,'Description for Product10'),
(3, 'EFG123', 'Cuerda de saltar', 0, 20.10,'Description for Product11'),
(2, 'HIJ456', 'Armario', 1, 37.20,'Description for Product12'),
(4, 'KLM789', 'Juego de ollas', 1, 24.60,'Description for Product13'),
(3, 'NOP012', 'Tabla de surf', 0, 21.80,'Description for Product14'),
(2, 'QRS345', 'Escritorio', 1, 33.30,'Description for Product15'),
(4, 'TUV678', 'Licuadora', 0, 19.90, 'Description for Product16'),
(1, 'WXY901', 'Laptop', 1, 27.40,'Description for Product17'),
(1, 'ZAB234', 'Impresora', 1, 31.10, 'Description for Product18'),
(4, 'CDE567', 'Cafetera', 0, 19.82, 'Description for Product19'),
(1, 'FGH890', 'Consola de videojuegos', 1, 37.28, 'Description for Product20');
-- INSERT ProductSuppliers
INSERT INTO productSupplier (id_product_fk, id_supplier_fk, cost, keySupplier)
VALUES
    (1, 1, 19.99, 'BC123'),
    (1, 2, 18.50, 'YZ789'),
    (2, 3, 15.75, 'MN456'),
    (2, 4, 22.30, 'QR789'),
    (3, 3, 10.99, 'EF456'),
    (3, 4, 14.25, 'HI789'),
    (4, 1, 29.50, 'KL123'),
    (4, 2, 24.75, 'NO456'),
    (5, 3, 17.80, 'TU789'),
    (5, 5, 21.40, 'WX123'),
    (6, 1, 12.50, 'ZA456'),
    (6, 2, 18.99, 'CD789'),
    (7, 3, 25.30, 'FG123'),
    (7, 4, 20.75, 'IJ456'),
    (8, 2, 14.60, 'LM789'),
    (8, 1, 16.85, 'OP123'),
    (9, 4, 19.75, 'RS456'),
    (9, 2, 23.40, 'UV789'),
    (10, 3, 28.20, 'XY123'),
    (10, 1, 22.90, 'AB456'),
    (11, 5, 16.99, 'DE789'),
    (11, 2, 13.75, 'GH123'),
    (12, 5, 30.50, 'JK456'),
    (12, 1, 25.75, 'MN789'),
    (13, 1, 18.80, 'PQ123'),
    (13, 4, 21.40, 'ST456'),
    (14, 2, 14.50, 'VW789'),
    (14, 1, 18.99, 'YZ123'),
    (15, 2, 25.30, 'BC456'),
    (15, 5, 20.75, 'EF789'),
    (16, 1, 14.60, 'HI123'),
    (16, 2, 16.85, 'KL456'),
    (17, 3, 19.75, 'NO789'),
    (17, 4, 23.40, 'QR123'),
    (18, 1, 28.20, 'TU456'),
    (18, 2, 22.90, 'WX789'),
    (19, 4, 16.99, 'ZA123'),
    (19, 1, 13.75, 'CD456'),
    (20, 3, 30.50, 'FG789'),
    (20, 5, 25.75, 'IJ123');
    
INSERT INTO useri (useri, email) VALUES
('Bambosan', 'bambosan@gmail.com'),
('Invitado', 'almaximoti@almaximoti.com');