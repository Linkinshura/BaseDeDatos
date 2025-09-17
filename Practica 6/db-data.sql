USE practica_2;

INSERT INTO provincias(nombre, capital, gobernador, poblacion, superficie, autonoma_desde) VALUES
('Buenos Aires', 'La Plata', 'Axel Kicillof', 17541141, 307571, '1820-02-11'),
('Catamarca', 'San Fernando del Valle de Catamarca', 'Raul Jalil', 415438, 102602, '1821-08-25'),
('Chaco', 'Resistencia', 'Jorge Capitanich', 1204541, 99633, '1951-08-08'),
('Chubut', 'Rawson', 'Mariano Arcioni', 618994, 224686, '1955-06-15'),
('Cordoba', 'Cordoba', 'Juan Schiaretti', 3760450, 165321, '1820-01-05'),
('Corrientes', 'Corrientes', 'Gustavo Valdes', 1120801, 88199, '1814-04-20'),
('Entre Rios', 'Parana', 'Gustavo Border', 1385961, 78781, '1814-04-23'),
('Formosa', 'Formosa', 'Gildo Insfran', 605193, 72066, '1955-06-15'),
('Jujuy', 'San Salvador de Jujuy', 'Gerardo Morales', 770881, 53219, '1836-12-17'),
('La Pampa', 'Santa Rosa', 'Carlos Verna', 358428, 143440, '1951-08-08'),
('La Rioja', 'La Rioja', 'Ricardo Quintela', 393531, 89680, '1820-03-01'),
('Mendoza', 'Mendoza', 'Rodolfo Suarez', 1990338, 148827, '1820-03-01'),
('Misiones', 'Posadas', 'Oscar Herrera Ahuad', 1261294, 29801, '1953-12-10'),
('Neuquen', 'Neuquen', 'Omar Gutierrez', 664057, 94078, '1955-06-15'),
('Rio Negro', 'Viedma', 'Arabela Carreras', 747610, 203013, '1955-06-15'),
('Salta', 'Salta', 'Gustavo Saenz', 1424397, 155488, '1836-12-17'),
('San Juan', 'San Juan', 'Sergio Uñac', 781217, 89651, '1820-03-01'),
('San Luis', 'San Luis', 'Alberto Rodriguez Saa', 508328, 76748, '1820-03-01'),
('Santa Cruz', 'Rio Gallegos', 'Alicia Kirchner', 365698, 243943, '1956-11-22'),
('Santa Fe', 'Santa Fe', 'Omar Perotti', 3536418, 133007, '1816-05-10'),
('Santiago del Estero', 'Santiago del Estero', 'Gerardo Zamora', 978313, 136351, '1820-04-27'),
('Tierra del Fuego, Antartida e Islas del Atlantico Sur', 'Ushuaia', 'Gustavo Melella', 173432, 21571, '1990-04-26'),
('Tucuman', 'San Miguel de Tucuman', 'Juan Luis Manzur', 1694656, 22524, '1825-11-25'),
('Ciudad Autonoma de Buenos Aires', NULL, 'Horacio Rodriguez Larreta', 3075646, 203, '1536-02-02');

INSERT INTO ciudades(nombre,provincia,poblacion,superficie,fundacion,intendente, altitud)
VALUES
('Buenos Aires',24,2890151,203,'1536-02-02','Horacio Rodriguez Larreta',25),
('Cordoba',5,1317298,576,'1573-07-06','Martin Llaryora',670),
('Rosario',20,948312,179,'1852-08-05','Pablo Javkin',25),
('Mar del Plata',1,593337,79,'1874-02-10','Guillermo Montenegro',38),
('San Miguel de Tucuman',23,548866,91,'1565-05-31','German Alfaro',431),
('Salta',16,520683,60,'1582-04-16','Bettina Romero',1187),
('Santa Fe',20,391164,268,'1573-11-15','Emilio Jaton',25),
('Corrientes',6,346334,90,'1588-04-03','Eduardo Tassano',62),
('Bahia Blanca',1,291327,130,'1828-04-11','Hector Gay',20),
('Resistencia',3,290723,562,'1878-01-27','Gustavo Martinez',50),
('Posadas',13,275028,324,'1870-03-18','Leonardo Stelatto',124),
('Merlo',1,268961,173,'1755-08-28','Gustavo Menendez',16),
('Quilmes',1,262379,125,'1666-08-14','Mayra Mendoza',17),
('San Salvador de Jujuy',9,257970,19,'1593-04-19','Raul Jorge',1259),
('Guaymallen',12,252618,NULL,'1858-05-14','Marcelino Iglesias',720),
('Santiago del Estero',21,252192,40,'1553-07-25','Norma Fuentes',182),
('Gregorio de Laferrere',1,248362,24,'1911-05-04','Fernando Espinoza',4),
('Jose C. Paz',1,247217,50,'1994-10-20','Mario Alberto Ishii',25),
('Parana',7,247139,137,'1813-06-25','Adan Bahl',77),
('Banfield',1,246467,NULL,'1960-10-28','Martin Insaurralde',16),
('Gonzalez Catan',1,238067,168,'1910-04-03','Fernando Espinoza',19),
('Neuquen',14,231198,128,'1904-09-12','Mariano Gaido',270),
('Formosa',8,222226,75,'1879-04-08','Jorge Jofre',57),
('Lanus',1,215956,48,'1945-01-01','Nestor Grindetti',9),
('La Plata',1,193144,27,'1882-11-19','Julio Garro',26),
('Godoy Cruz',12,191299,107,'1909-02-09','Tadeo Garcia Zalazar',730),
('Isidro Casanova',1,190696,20,'1911-05-15','Fernando Espinoza',14),
('Las Heras',12,189067,NULL,'1871-01-31','Mario Daniel Orozco',725),
('Berazategui',1,180523,217,'1960-1-04','Juan Jose Mussi',22),
('La Rioja',11,178872,14,'1591-05-20','Ines Brizuela y Doria',515),
('Comodoro Rivadavia',4,175196,66,'1901-02-23','Juan Pablo Luque',61),
('Moreno',1,171849,184,'1864-10-25','Mariel Fernandez',14),
('San Luis',18,169947,256,'1594-08-25','Sergio Tamayo',709),
('San Miguel',1,168762,9,'1864-05-18','Jaime Mendez',28),
('San Fernando del Valle de Catamarca',2,159139,399,'1683-07-05','Gustavo Saadi',519),
('Rio Cuarto',5,157010,64,'1786-11-11','Juan Manuel Llamosas',452),
('Virrey del Pino',1,156132,117,NULL,'Fernando Espinoza',NULL);


INSERT INTO productos(descripcion, marca, precio, stock) VALUES
('Birome azul', 'BIC', 13.99, 1000),
('Birome roja', 'BIC', 13.99, 1000),
('Birome verde', 'BIC', 13.99, 1000),
('Birome negra', 'BIC', 13.99, 1000),
('Resma A4', 'Ledesma', 182.99, 100),
('Resma A4', 'Pumax', 169.99, 100),
('Marcador de pizarra negro', 'Trabi', 99.99, 500),
('Marcador de pizarra azul', 'Trabi', 99.99, 500),
('Marcador de pizarra rojo', 'Trabi', 99.99, 500),
('Marcador de pizarra verde', 'Trabi', 99.99, 500),
('Cuaderno 48 hojas rayado', 'Rivadavia', 119.99, 500),
('Cuaderno 48 hojas cuadriculado', 'Rivadavia', 119.99, 500),
('Adhesivo para papel', 'Voligoma', 59.99, 1000),
('Tijera', 'Maped', 89.99, 600);

INSERT INTO clientes(nombre,apellido,tel,calle,altura,localidad) VALUES
('Juan', 'Perez', '011 5555 5555', 'Baigorria', 5360, 1),
('Maria', 'Garcia', '351 5555 4444', 'San Martin', 1234, 2),
('Jorge', 'Rodriguez', '223 5555 3333', 'Jujuy', 1200, 4),
('Juana', 'Martinez', '341 4444 1234', 'Corrientes', 6500, 3),
('Mario', 'Martinez', '351 3333 6666', 'Rivadavia', 4366, 2),
('Pedro', 'Gonzalez', '381 4444 4321', 'Belgrano', 5674, 5),
('Graciela', 'Rodriguez', '341 1234 1234', 'Av. de Mayo', 3456, 3),
('Antonia', 'Perez', '011 5555 5555', 'Av. 9 de Julio', 2300, 1);

INSERT INTO compras(fecha,cliente,producto,cant) VALUES
('2022-05-12 17:30:00',1,5,10),
('2022-05-12 17:35:00',3,7,20),
('2022-05-13 17:40:00',3,12,30),
('2022-05-13 17:45:00',4,7,20),
('2022-05-14 16:15:00',2,14,20),
('2022-05-15 15:10:00',8,2,10),
('2022-05-15 15:15:00',7,3,50),
('2022-05-15 18:00:00',4,6,50),
('2022-05-16 09:00:00',6,13,15),
('2022-05-16 11:30:00',5,7,5),
('2022-05-16 17:10:00',5,8,10),
('2022-05-16 17:30:00',1,9,30),
('2022-05-16 17:40:00',2,10,25),
('2022-05-17 10:30:00',1,11,15),
('2022-05-17 10:40:00',2,12,15),
('2022-05-17 15:00:00',5,1,20),
('2022-05-17 15:50:00',7,4,10);

UPDATE provincias
SET region = 'Cuyo'
WHERE nombre IN ('Mendoza', 'San Juan', 'San Luis');

UPDATE provincias
SET region = 'Patagonia'
WHERE nombre IN ('Santa Cruz', 'Chubut', 'Rio Negro', 'Neuquen', 'La Pampa')
   OR nombre LIKE 'Tierra del%';

UPDATE provincias
SET region = 'Mesopotamia'
WHERE nombre IN ('Entre Rios', 'Corrientes', 'Misiones');

UPDATE provincias
SET region = 'NOA'
WHERE nombre IN ('Jujuy', 'Salta', 'Tucuman', 'Catamarca', 'La Rioja', 'Santiago del Estero');

UPDATE provincias
SET region = 'Pampa'
WHERE nombre IN ('Santa Fe', 'Cordoba', 'Buenos Aires', 'Ciudad Autonoma de Buenos Aires');

UPDATE provincias
SET region = 'Chaco'
WHERE nombre IN ('Chaco', 'Formosa');