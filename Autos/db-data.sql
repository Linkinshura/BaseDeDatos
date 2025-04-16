-- Tabla sucursales
INSERT INTO sucursales (id, ubicacion, localidad, m2) VALUES
(1, 'Lope de Vega 2150', 'CABA', 200),
(2, 'Corrientes 1234', 'Cordoba', 250),
(3, 'San Martin 555', 'Corrientes', 150),
(4, 'Cervantes 444', 'CABA', 120);

-- Tabla personas
INSERT INTO personas (id, nombre, apellido, dni, domicilio) VALUES
(1, 'Juan', 'Garcia', 25123123, 2),
(2, 'Maria', 'Gonzalez', 35124444, 1),
(3, 'Carlos', 'Rodriguez', 27100100, 3),
(4, 'Valeria', 'Perez', 42001001, 4);

-- Tabla propiedades
INSERT INTO propiedades (id, calle, altura, piso, depto, cp, tipo) VALUES
(1, 'Lope de Vega', 2150, NULL, NULL, 1407, 'Casa'),
(2, 'Lope de Vega', 1234, 2, 'A', 1407, 'Departamento'),
(3, 'Baigorria', 5001, NULL, 'B', 1405, 'PH'),
(4, 'Lascano', 4822, 4, 'C', 1406, 'Departamento');

-- Tabla autos
INSERT INTO autos (patente, nro_chasis, nro_motor, marca, modelo, año, dueño) VALUES
('ABC123', 'AA123123BC', 'CCB54542353', 'Peugeot', '504', 1999, 2),
('GHJ123', 'AB123455BC', 'DDB54253553', 'Ford', 'Focus', 2008, 2),
('PAZ505', 'BB123666BA', 'EDB54231393', 'Fiat', 'Siena', 2010, 3);

-- Tabla personal
INSERT INTO personal (id, dni, salario, f_ingreso, rol, sucursal) VALUES
(1, 42421234, 144000.00, '1999-07-07', 'vendedor', 2),
(2, 33334444, 138000.00, '2011-04-04', 'cadete', 1),
(3, 55332211, 110000.00, '2018-11-05', 'repositor', 3),
(4, 44226666, 168000.00, '2015-07-06', 'cajero', 2),
(5, 35353535, 120000.00, '2015-02-08', 'vendedor', 4);

-- Tabla ventas
INSERT INTO ventas (id, vendedor, producto, monto) VALUES
(1, 1, 'TV 42 pulgadas', 50000.00),
(2, 2, 'Heladera', 150000.00),
(3, 1, 'Microondas', 30000.00);
