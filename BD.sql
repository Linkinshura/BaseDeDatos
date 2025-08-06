DROP DATABASE IF EXISTS BD;

CREATE DATABASE IF NOT EXISTS BD;

USE BD;

CREATE TABLE equipos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    ciudad VARCHAR(50),
    fecha_fund DATE,
    division VARCHAR(50),
    campeonatos INT
);

INSERT INTO equipos VALUES
(1, 'Newells', 'Rosario', '1903-11-03', 'Primera', 6),
(2, 'Ferro', 'Buenos Aires', '1904-07-28', 'Nacional B', 2),
(3, 'Banfield', 'Banfield', '1896-01-21', 'Primera', 1),
(4, 'Estudiantes', 'La Plata', '1905-08-04', 'Primera', 6),
(5, 'Gimnasia', 'La Plata', '1887-06-03', 'Primera', 1);


CREATE TABLE jugadores (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    altura INT,
    edad INT,
    pos VARCHAR(10),
    equipo INT,
    FOREIGN KEY (equipo) REFERENCES equipos(id)
);

INSERT INTO jugadores VALUES
(1, 'Leonel', 'Vangioni', 177, 35, 'DEF', 1),
(2, 'Mariano', 'Andujar', 194, 38, 'ARQ', 4),
(3, 'Dario', 'Cvitanich', 172, 38, 'DEL', 3),
(4, 'Brahian', 'Aleman', 178, 32, 'MED', 5);


CREATE TABLE materias (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    curso INT,
    esp VARCHAR(50),
    cant_horas INT,
    contraturno BOOLEAN,
    rotacion VARCHAR(50)
);

INSERT INTO materias VALUES
(1, 'Algoritmos', 4, 'Computacion', 9, 1, NULL),
(2, 'Biologia', 2, 'Ciclo basico', 2, 0, NULL),
(3, 'Matematica', 4, 'Computacion', 4, 0, NULL),
(4, 'Taller', 3, 'Computacion', 9, 1, 'Redes'),
(5, 'Lengua', 4, 'Automotores', 3, 0, NULL);


CREATE TABLE alumnos (
    id INT PRIMARY KEY,
    dni BIGINT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    curso INT,
    esp VARCHAR(50)
);

INSERT INTO alumnos VALUES
(1, 42123123, 'Juan', 'Gonzalez', 4, 'Computacion'),
(2, 43200110, 'Jorge', 'Perez', 4, 'Computacion'),
(3, 46123456, 'Maria', 'Rodriguez', 3, 'Automotores'),
(4, 47000123, 'Pedro', 'Garcia', 2, 'Ciclo basico');


CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    tel VARCHAR(20),
    calle VARCHAR(100),
    altura INT,
    localidad INT
);

INSERT INTO clientes VALUES
(1, 'Juan', 'Perez', '011 5555 5555', 'Baigorria', 5360, 1),
(2, 'Maria', 'Garcia', '351 5555 4444', 'San Martin', 1234, 2),
(3, 'Jorge', 'Rodriguez', '223 5555 3333', 'Jujuy', 1200, 4),
(4, 'Juana', 'Martinez', '341 4444 1234', 'Corrientes', 6500, 3),
(5, 'Mario', 'Martinez', '351 3333 6666', 'Rivadavia', 4366, 2),
(6, 'Pedro', 'Gonzalez', '381 4444 4321', 'Belgrano', 5674, 5),
(7, 'Graciela', 'Rodriguez', '341 1234 1234', 'Av. de Mayo', 3456, 3),
(8, 'Antonia', 'Perez', '011 5555 5555', 'Av. 9 de Julio', 2300, 1);


CREATE TABLE productos (
    id INT PRIMARY KEY,
    descripcion VARCHAR(100),
    marca VARCHAR(50),
    precio DECIMAL(10,2),
    stock INT
);

INSERT INTO productos VALUES
(1, 'Birome azul', 'BIC', 13.99, 1000),
(2, 'Birome roja', 'BIC', 13.99, 1000),
(3, 'Birome verde', 'BIC', 13.99, 1000),
(4, 'Birome negra', 'BIC', 13.99, 1000),
(5, 'Resma A4', 'Ledesma', 182.99, 100),
(6, 'Resma A4', 'Pumax', 169.99, 100),
(7, 'Marcador de pizarra negro', 'Trabi', 99.99, 500),
(8, 'Marcador de pizarra azul', 'Trabi', 99.99, 500),
(9, 'Marcador de pizarra rojo', 'Trabi', 99.99, 500),
(10, 'Marcador de pizarra verde', 'Trabi', 99.99, 500),
(11, 'Cuaderno 48 hojas rayado', 'Rivadavia', 119.99, 500),
(12, 'Cuaderno 48 hojas cuadriculado', 'Rivadavia', 119.99, 500),
(13, 'Adhesivo para papel', 'Voligoma', 59.99, 1000),
(14, 'Tijera', 'Maped', 89.99, 600);


CREATE TABLE compras (
    id INT PRIMARY KEY,
    fecha DATETIME,
    cliente INT,
    producto INT,
    cant INT,
    FOREIGN KEY (cliente) REFERENCES clientes(id),
    FOREIGN KEY (producto) REFERENCES productos(id)
);

INSERT INTO compras VALUES
(1, '2022-05-12 17:30:00', 1, 5, 10),
(2, '2022-05-12 17:35:00', 3, 7, 20),
(3, '2022-05-13 17:40:00', 3, 12, 30),
(4, '2022-05-13 17:45:00', 4, 7, 20),
(5, '2022-05-14 16:15:00', 2, 14, 20),
(6, '2022-05-15 15:10:00', 8, 2, 10),
(7, '2022-05-15 15:15:00', 7, 3, 50),
(8, '2022-05-15 18:00:00', 4, 6, 50),
(9, '2022-05-16 09:00:00', 6, 13, 15),
(10, '2022-05-16 11:30:00', 5, 7, 5),
(11, '2022-05-16 17:10:00', 5, 8, 10),
(12, '2022-05-16 17:30:00', 1, 9, 30),
(13, '2022-05-16 17:40:00', 2, 10, 25),
(14, '2022-05-17 10:30:00', 1, 11, 15),
(15, '2022-05-17 10:40:00', 2, 12, 15),
(16, '2022-05-17 15:00:00', 5, 1, 20),
(17, '2022-05-17 15:50:00', 7, 4, 10);

CREATE TABLE ciudades (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    provincia INT,
    poblacion INT,
    superficie INT,
    fundacion DATE,
    intendente VARCHAR(100),
    altitud INT
);
INSERT INTO ciudades (id, nombre, provincia, poblacion, superficie, fundacion, intendente, altitud) VALUES
(1, 'Buenos Aires', 24, 2890151, 203, '1536-02-02', 'Horacio Rodriguez Larreta', 25),
(2, 'Cordoba', 5, 1317298, 576, '1573-07-06', 'Martin Llaryora', 670),
(3, 'Rosario', 20, 948312, 179, '1852-08-05', 'Pablo Javkin', 25),
(4, 'Mar del Plata', 1, 593337, 79, '1874-02-10', 'Guillermo Montenegro', 38),
(5, 'San Miguel de Tucuman', 23, 548866, 91, '1565-05-31', 'German Alfaro', 431),
(6, 'Salta', 16, 520683, 60, '1582-04-16', 'Bettina Romero', 1187),
(7, 'Santa Fe', 20, 391164, 268, '1573-11-15', 'Emilio Jaton', 25),
(8, 'Corrientes', 6, 346334, 90, '1858-04-03', 'Eduardo Tassano', 62),
(9, 'Bahia Blanca', 1, 291327, 130, '1828-04-11', 'Hector Gay', 20),
(10, 'Resistencia', 3, 290723, 562, '1878-08-21', 'Gustavo Martinez', 0),
(11, 'Posadas', 13, 275028, 324, '1870-03-18', 'Leonardo Stelatto', 124),
(12, 'Merlo', 1, 268961, 173, '1755-08-28', 'Gustavo Menendez', 16),
(13, 'Quilmes', 1, 262379, 125, '1666-08-14', 'Mayra Mendoza', 10),
(14, 'San Salvador de Jujuy', 9, 257970, 19, '1593-04-09', 'Raul Jorge', 1259),
(15, 'Guaymallen', 12, 252618, NULL, NULL, 'Marcelino Iglesias', NULL),
(16, 'Santiago del Estero', 21, 252192, 40, '1553-07-25', 'Norma Fuentes', 182),
(17, 'Gregorio de Laferrere', 1, 248362, 24, '1911-05-04', 'Fernando Espinoza', 4),
(18, 'Jose C. Paz', 1, 247217, 50, '1994-10-20', 'Mario Alberto Ishii', 25),
(19, 'Parana', 7, 247139, 137, '1813-06-25', 'Adan Bahl', 77),
(20, 'Banfield', 1, 246467, NULL, '1960-10-28', 'Martin Insaurralde', 16),
(21, 'Gonzalez Catan', 1, 238067, 168, '1910-04-03', 'Fernando Espinoza', 19),
(22, 'Neuquen', 14, 231198, 128, '1904-09-18', 'Mariano Gaido', 270),
(23, 'Formosa', 8, 222266, 75, '1879-04-08', 'Jorge Jofre', 57),
(24, 'Lanus', 1, 215956, 48, '1945-01-01', 'Nestor Grindetti', 9),
(25, 'La Plata', 1, 193144, 27, '1882-11-19', 'Julio Garro', 26),
(26, 'Godoy Cruz', 12, 191299, 107, '1909-02-05', 'Tadeo Garcia Zalazar', 730),
(27, 'Isidro Casanova', 1, 190696, 110, '1911-05-15', 'Fernando Espinoza', 14),
(28, 'Las Heras', 12, 189067, NULL, '1901-01-31', 'Mario Daniel Orozco', 725),
(29, 'Berazategui', 1, 180523, 217, '1960-01-04', 'Juan Jose Mussi', 22),
(30, 'La Rioja', 11, 178872, 114, '1591-05-20', 'Ines Brizuela y Doria', 515),
(31, 'Comodoro Rivadavia', 4, 175196, 66, '1901-02-23', 'Juan Pablo Luque', 61),
(32, 'Moreno', 1, 171849, 184, '1864-10-25', 'Mariel Fernandez', 14),
(33, 'San Luis', 18, 169947, 256, '1594-06-21', 'Sergio Tamayo', 709),
(34, 'San Miguel', 1, 168762, 30, '1864-05-18', 'Jaime Mendez', 28),
(35, 'San Fernando del Valle de Catamarca', 11, 159139, 399, '1683-07-05', 'Gustavo Saadi', 519),
(36, 'Rio Cuarto', 5, 157010, 64, '1786-11-11', 'Juan Manuel Llamosas', 452),
(37, 'Virrey del Pino', 1, 156132, 117, NULL, 'Fernando Espinoza', NULL);


CREATE TABLE provincias (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    capital VARCHAR(50),
    gobernador VARCHAR(100),
    poblacion INT,
    superficie INT,
    autonomia_desde DATE,
    region VARCHAR(50)
);
INSERT INTO provincias (id, nombre, capital, gobernador, poblacion, superficie, autonomia_desde, region) VALUES
(1, 'Buenos Aires', 'La Plata', 'Axel Kicillof', 17541141, 307571, '1820-02-11', 'Pampa'),
(2, 'Catamarca', 'Catamarca', 'Raul Jalil', 415438, 102602, '1821-08-25', 'NOA'),
(3, 'Chaco', 'Resistencia', 'Jorge Capitanich', 1204541, 99633, '1951-08-08', 'Chaco'),
(4, 'Chubut', 'Rawson', 'Mariano Arcioni', 576220, 224686, '1884-09-25', 'Patagonia'),
(5, 'Cordoba', 'Cordoba', 'Juan Schiaretti', 3701905, 165321, '1815-05-12', 'Cuyo'),
(6, 'Corrientes', 'Corrientes', 'Gustavo Valdes', 993338, 88199, '1918-05-15', 'Mesopotamia'),
(7, 'Entre Rios', 'Parana', 'Gustavo Bordet', 1279643, 78781, '1853-05-29', 'Mesopotamia'),
(8, 'Formosa', 'Formosa', 'Gildo Insfran', 606041, 72066, '1955-10-28', 'NEA'),
(9, 'Jujuy', 'San Salvador de Jujuy', 'Gerardo Morales', 745179, 53408, '1835-07-19', 'NOA'),
(10, 'La Pampa', 'Santa Rosa', 'Sergio Ziliotto', 349299, 143440, '1891-07-24', 'Pampa'),
(11, 'La Rioja', 'La Rioja', 'Ricardo Quintela', 393531, 89682, '1820-03-01', 'NOA'),
(12, 'Mendoza', 'Mendoza', 'Rodolfo Suarez', 2064129, 148827, '1820-02-28', 'Cuyo'),
(13, 'Misiones', 'Posadas', 'Oscar Herrera Ahuad', 1156095, 29869, '1953-08-11', 'Mesopotamia'),
(14, 'Neuquen', 'Neuquen', 'Omar Gutierrez', 664857, 94078, '1955-06-15', 'Patagonia'),
(15, 'Rio Negro', 'Viedma', 'Arabela Carreras', 747610, 20381, '1957-08-01', 'Patagonia'),
(16, 'Salta', 'Salta', 'Gustavo Saenz', 1424317, 155488, '1853-04-22', 'NOA'),
(17, 'San Juan', 'San Juan', 'Alberto Rodriguez Saa', 781217, 89065, '1820-03-01', 'Cuyo'),
(18, 'San Luis', 'San Luis', 'Alberto Rodriguez Saa', 368328, 27648, '1820-03-01', 'Cuyo'),
(19, 'Santa Cruz', 'Rio Gallegos', 'Alicia Kirchner', 395969, 243013, '1957-06-12', 'Patagonia'),
(20, 'Santa Fe', 'Santa Fe', 'Omar Perotti', 3358141, 133007, '1853-04-22', 'Pampa'),
(21, 'Santiago del Estero', 'Santiago del Estero', 'Gerardo Zamora', 1078313, 136351, '1820-03-01', 'NOA'),
(22, 'Tierra del Fuego', 'Ushuaia', 'Gustavo Melella', 173432, 21571, '1990-04-26', 'Patagonia'),
(23, 'Tucuman', 'Tucuman', 'Juan Luis Manzur', 1694566, 22524, '1853-11-25', 'NOA'),
(24, 'CABA', NULL, 'Horacio Rodriguez Larreta', 3075864, 203, '1536-02-02', 'Pampa');





-- Queries

-- 1) 

SELECT DISTINCT(apellido)AS apellido FROM clientes;
+-----------+
| apellido  |
+-----------+
| Perez     |
| Garcia    |
| Rodriguez |
| Martinez  |
| Gonzalez  |
+-----------+
5 rows in set (0.003 sec)

-- 2)

SELECT c.nombre, c.apellido, ci.nombre FROM clientes c JOIN ciudades ci;
+----------+-----------+-------------------------------------+
| nombre   | apellido  | nombre                              |
+----------+-----------+-------------------------------------+
| Juan     | Perez     | Buenos Aires                        |
| Maria    | Garcia    | Buenos Aires                        |
| Jorge    | Rodriguez | Buenos Aires                        |
| Juana    | Martinez  | Buenos Aires                        |
| Mario    | Martinez  | Buenos Aires                        |
| Pedro    | Gonzalez  | Buenos Aires                        |
| Graciela | Rodriguez | Buenos Aires                        |
| Antonia  | Perez     | Buenos Aires                        |
| Juan     | Perez     | Cordoba                             |
| Maria    | Garcia    | Cordoba                             |
| Jorge    | Rodriguez | Cordoba                             |
| Juana    | Martinez  | Cordoba                             |
| Mario    | Martinez  | Cordoba                             |
| Pedro    | Gonzalez  | Cordoba                             |
| Graciela | Rodriguez | Cordoba                             |
| Antonia  | Perez     | Cordoba                             |
| Juan     | Perez     | Rosario                             |
| Maria    | Garcia    | Rosario                             |
| Jorge    | Rodriguez | Rosario                             |
| Juana    | Martinez  | Rosario                             |
| Mario    | Martinez  | Rosario                             |
| Pedro    | Gonzalez  | Rosario                             |
| Graciela | Rodriguez | Rosario                             |
| Antonia  | Perez     | Rosario                             |
| Juan     | Perez     | Mar del Plata                       |
| Maria    | Garcia    | Mar del Plata                       |
| Jorge    | Rodriguez | Mar del Plata                       |
| Juana    | Martinez  | Mar del Plata                       |
| Mario    | Martinez  | Mar del Plata                       |
| Pedro    | Gonzalez  | Mar del Plata                       |
| Graciela | Rodriguez | Mar del Plata                       |
| Antonia  | Perez     | Mar del Plata                       |
| Juan     | Perez     | San Miguel de Tucuman               |
| Maria    | Garcia    | San Miguel de Tucuman               |
| Jorge    | Rodriguez | San Miguel de Tucuman               |
| Juana    | Martinez  | San Miguel de Tucuman               |
| Mario    | Martinez  | San Miguel de Tucuman               |
| Pedro    | Gonzalez  | San Miguel de Tucuman               |
| Graciela | Rodriguez | San Miguel de Tucuman               |
| Antonia  | Perez     | San Miguel de Tucuman               |
| Juan     | Perez     | Salta                               |
| Maria    | Garcia    | Salta                               |
| Jorge    | Rodriguez | Salta                               |
| Juana    | Martinez  | Salta                               |
| Mario    | Martinez  | Salta                               |
| Pedro    | Gonzalez  | Salta                               |
| Graciela | Rodriguez | Salta                               |
| Antonia  | Perez     | Salta                               |
| Juan     | Perez     | Santa Fe                            |
| Maria    | Garcia    | Santa Fe                            |
| Jorge    | Rodriguez | Santa Fe                            |
| Juana    | Martinez  | Santa Fe                            |
| Mario    | Martinez  | Santa Fe                            |
| Pedro    | Gonzalez  | Santa Fe                            |
| Graciela | Rodriguez | Santa Fe                            |
| Antonia  | Perez     | Santa Fe                            |
| Juan     | Perez     | Corrientes                          |
| Maria    | Garcia    | Corrientes                          |
| Jorge    | Rodriguez | Corrientes                          |
| Juana    | Martinez  | Corrientes                          |
| Mario    | Martinez  | Corrientes                          |
| Pedro    | Gonzalez  | Corrientes                          |
| Graciela | Rodriguez | Corrientes                          |
| Antonia  | Perez     | Corrientes                          |
| Juan     | Perez     | Bahia Blanca                        |
| Maria    | Garcia    | Bahia Blanca                        |
| Jorge    | Rodriguez | Bahia Blanca                        |
| Juana    | Martinez  | Bahia Blanca                        |
| Mario    | Martinez  | Bahia Blanca                        |
| Pedro    | Gonzalez  | Bahia Blanca                        |
| Graciela | Rodriguez | Bahia Blanca                        |
| Antonia  | Perez     | Bahia Blanca                        |
| Juan     | Perez     | Resistencia                         |
| Maria    | Garcia    | Resistencia                         |
| Jorge    | Rodriguez | Resistencia                         |
| Juana    | Martinez  | Resistencia                         |
| Mario    | Martinez  | Resistencia                         |
| Pedro    | Gonzalez  | Resistencia                         |
| Graciela | Rodriguez | Resistencia                         |
| Antonia  | Perez     | Resistencia                         |
| Juan     | Perez     | Posadas                             |
| Maria    | Garcia    | Posadas                             |
| Jorge    | Rodriguez | Posadas                             |
| Juana    | Martinez  | Posadas                             |
| Mario    | Martinez  | Posadas                             |
| Pedro    | Gonzalez  | Posadas                             |
| Graciela | Rodriguez | Posadas                             |
| Antonia  | Perez     | Posadas                             |
| Juan     | Perez     | Merlo                               |
| Maria    | Garcia    | Merlo                               |
| Jorge    | Rodriguez | Merlo                               |
| Juana    | Martinez  | Merlo                               |
| Mario    | Martinez  | Merlo                               |
| Pedro    | Gonzalez  | Merlo                               |
| Graciela | Rodriguez | Merlo                               |
| Antonia  | Perez     | Merlo                               |
| Juan     | Perez     | Quilmes                             |
| Maria    | Garcia    | Quilmes                             |
| Jorge    | Rodriguez | Quilmes                             |
| Juana    | Martinez  | Quilmes                             |
| Mario    | Martinez  | Quilmes                             |
| Pedro    | Gonzalez  | Quilmes                             |
| Graciela | Rodriguez | Quilmes                             |
| Antonia  | Perez     | Quilmes                             |
| Juan     | Perez     | San Salvador de Jujuy               |
| Maria    | Garcia    | San Salvador de Jujuy               |
| Jorge    | Rodriguez | San Salvador de Jujuy               |
| Juana    | Martinez  | San Salvador de Jujuy               |
| Mario    | Martinez  | San Salvador de Jujuy               |
| Pedro    | Gonzalez  | San Salvador de Jujuy               |
| Graciela | Rodriguez | San Salvador de Jujuy               |
| Antonia  | Perez     | San Salvador de Jujuy               |
| Juan     | Perez     | Guaymallen                          |
| Maria    | Garcia    | Guaymallen                          |
| Jorge    | Rodriguez | Guaymallen                          |
| Juana    | Martinez  | Guaymallen                          |
| Mario    | Martinez  | Guaymallen                          |
| Pedro    | Gonzalez  | Guaymallen                          |
| Graciela | Rodriguez | Guaymallen                          |
| Antonia  | Perez     | Guaymallen                          |
| Juan     | Perez     | Santiago del Estero                 |
| Maria    | Garcia    | Santiago del Estero                 |
| Jorge    | Rodriguez | Santiago del Estero                 |
| Juana    | Martinez  | Santiago del Estero                 |
| Mario    | Martinez  | Santiago del Estero                 |
| Pedro    | Gonzalez  | Santiago del Estero                 |
| Graciela | Rodriguez | Santiago del Estero                 |
| Antonia  | Perez     | Santiago del Estero                 |
| Juan     | Perez     | Gregorio de Laferrere               |
| Maria    | Garcia    | Gregorio de Laferrere               |
| Jorge    | Rodriguez | Gregorio de Laferrere               |
| Juana    | Martinez  | Gregorio de Laferrere               |
| Mario    | Martinez  | Gregorio de Laferrere               |
| Pedro    | Gonzalez  | Gregorio de Laferrere               |
| Graciela | Rodriguez | Gregorio de Laferrere               |
| Antonia  | Perez     | Gregorio de Laferrere               |
| Juan     | Perez     | Jose C. Paz                         |
| Maria    | Garcia    | Jose C. Paz                         |
| Jorge    | Rodriguez | Jose C. Paz                         |
| Juana    | Martinez  | Jose C. Paz                         |
| Mario    | Martinez  | Jose C. Paz                         |
| Pedro    | Gonzalez  | Jose C. Paz                         |
| Graciela | Rodriguez | Jose C. Paz                         |
| Antonia  | Perez     | Jose C. Paz                         |
| Juan     | Perez     | Parana                              |
| Maria    | Garcia    | Parana                              |
| Jorge    | Rodriguez | Parana                              |
| Juana    | Martinez  | Parana                              |
| Mario    | Martinez  | Parana                              |
| Pedro    | Gonzalez  | Parana                              |
| Graciela | Rodriguez | Parana                              |
| Antonia  | Perez     | Parana                              |
| Juan     | Perez     | Banfield                            |
| Maria    | Garcia    | Banfield                            |
| Jorge    | Rodriguez | Banfield                            |
| Juana    | Martinez  | Banfield                            |
| Mario    | Martinez  | Banfield                            |
| Pedro    | Gonzalez  | Banfield                            |
| Graciela | Rodriguez | Banfield                            |
| Antonia  | Perez     | Banfield                            |
| Juan     | Perez     | Gonzalez Catan                      |
| Maria    | Garcia    | Gonzalez Catan                      |
| Jorge    | Rodriguez | Gonzalez Catan                      |
| Juana    | Martinez  | Gonzalez Catan                      |
| Mario    | Martinez  | Gonzalez Catan                      |
| Pedro    | Gonzalez  | Gonzalez Catan                      |
| Graciela | Rodriguez | Gonzalez Catan                      |
| Antonia  | Perez     | Gonzalez Catan                      |
| Juan     | Perez     | Neuquen                             |
| Maria    | Garcia    | Neuquen                             |
| Jorge    | Rodriguez | Neuquen                             |
| Juana    | Martinez  | Neuquen                             |
| Mario    | Martinez  | Neuquen                             |
| Pedro    | Gonzalez  | Neuquen                             |
| Graciela | Rodriguez | Neuquen                             |
| Antonia  | Perez     | Neuquen                             |
| Juan     | Perez     | Formosa                             |
| Maria    | Garcia    | Formosa                             |
| Jorge    | Rodriguez | Formosa                             |
| Juana    | Martinez  | Formosa                             |
| Mario    | Martinez  | Formosa                             |
| Pedro    | Gonzalez  | Formosa                             |
| Graciela | Rodriguez | Formosa                             |
| Antonia  | Perez     | Formosa                             |
| Juan     | Perez     | Lanus                               |
| Maria    | Garcia    | Lanus                               |
| Jorge    | Rodriguez | Lanus                               |
| Juana    | Martinez  | Lanus                               |
| Mario    | Martinez  | Lanus                               |
| Pedro    | Gonzalez  | Lanus                               |
| Graciela | Rodriguez | Lanus                               |
| Antonia  | Perez     | Lanus                               |
| Juan     | Perez     | La Plata                            |
| Maria    | Garcia    | La Plata                            |
| Jorge    | Rodriguez | La Plata                            |
| Juana    | Martinez  | La Plata                            |
| Mario    | Martinez  | La Plata                            |
| Pedro    | Gonzalez  | La Plata                            |
| Graciela | Rodriguez | La Plata                            |
| Antonia  | Perez     | La Plata                            |
| Juan     | Perez     | Godoy Cruz                          |
| Maria    | Garcia    | Godoy Cruz                          |
| Jorge    | Rodriguez | Godoy Cruz                          |
| Juana    | Martinez  | Godoy Cruz                          |
| Mario    | Martinez  | Godoy Cruz                          |
| Pedro    | Gonzalez  | Godoy Cruz                          |
| Graciela | Rodriguez | Godoy Cruz                          |
| Antonia  | Perez     | Godoy Cruz                          |
| Juan     | Perez     | Isidro Casanova                     |
| Maria    | Garcia    | Isidro Casanova                     |
| Jorge    | Rodriguez | Isidro Casanova                     |
| Juana    | Martinez  | Isidro Casanova                     |
| Mario    | Martinez  | Isidro Casanova                     |
| Pedro    | Gonzalez  | Isidro Casanova                     |
| Graciela | Rodriguez | Isidro Casanova                     |
| Antonia  | Perez     | Isidro Casanova                     |
| Juan     | Perez     | Las Heras                           |
| Maria    | Garcia    | Las Heras                           |
| Jorge    | Rodriguez | Las Heras                           |
| Juana    | Martinez  | Las Heras                           |
| Mario    | Martinez  | Las Heras                           |
| Pedro    | Gonzalez  | Las Heras                           |
| Graciela | Rodriguez | Las Heras                           |
| Antonia  | Perez     | Las Heras                           |
| Juan     | Perez     | Berazategui                         |
| Maria    | Garcia    | Berazategui                         |
| Jorge    | Rodriguez | Berazategui                         |
| Juana    | Martinez  | Berazategui                         |
| Mario    | Martinez  | Berazategui                         |
| Pedro    | Gonzalez  | Berazategui                         |
| Graciela | Rodriguez | Berazategui                         |
| Antonia  | Perez     | Berazategui                         |
| Juan     | Perez     | La Rioja                            |
| Maria    | Garcia    | La Rioja                            |
| Jorge    | Rodriguez | La Rioja                            |
| Juana    | Martinez  | La Rioja                            |
| Mario    | Martinez  | La Rioja                            |
| Pedro    | Gonzalez  | La Rioja                            |
| Graciela | Rodriguez | La Rioja                            |
| Antonia  | Perez     | La Rioja                            |
| Juan     | Perez     | Comodoro Rivadavia                  |
| Maria    | Garcia    | Comodoro Rivadavia                  |
| Jorge    | Rodriguez | Comodoro Rivadavia                  |
| Juana    | Martinez  | Comodoro Rivadavia                  |
| Mario    | Martinez  | Comodoro Rivadavia                  |
| Pedro    | Gonzalez  | Comodoro Rivadavia                  |
| Graciela | Rodriguez | Comodoro Rivadavia                  |
| Antonia  | Perez     | Comodoro Rivadavia                  |
| Juan     | Perez     | Moreno                              |
| Maria    | Garcia    | Moreno                              |
| Jorge    | Rodriguez | Moreno                              |
| Juana    | Martinez  | Moreno                              |
| Mario    | Martinez  | Moreno                              |
| Pedro    | Gonzalez  | Moreno                              |
| Graciela | Rodriguez | Moreno                              |
| Antonia  | Perez     | Moreno                              |
| Juan     | Perez     | San Luis                            |
| Maria    | Garcia    | San Luis                            |
| Jorge    | Rodriguez | San Luis                            |
| Juana    | Martinez  | San Luis                            |
| Mario    | Martinez  | San Luis                            |
| Pedro    | Gonzalez  | San Luis                            |
| Graciela | Rodriguez | San Luis                            |
| Antonia  | Perez     | San Luis                            |
| Juan     | Perez     | San Miguel                          |
| Maria    | Garcia    | San Miguel                          |
| Jorge    | Rodriguez | San Miguel                          |
| Juana    | Martinez  | San Miguel                          |
| Mario    | Martinez  | San Miguel                          |
| Pedro    | Gonzalez  | San Miguel                          |
| Graciela | Rodriguez | San Miguel                          |
| Antonia  | Perez     | San Miguel                          |
| Juan     | Perez     | San Fernando del Valle de Catamarca |
| Maria    | Garcia    | San Fernando del Valle de Catamarca |
| Jorge    | Rodriguez | San Fernando del Valle de Catamarca |
| Juana    | Martinez  | San Fernando del Valle de Catamarca |
| Mario    | Martinez  | San Fernando del Valle de Catamarca |
| Pedro    | Gonzalez  | San Fernando del Valle de Catamarca |
| Graciela | Rodriguez | San Fernando del Valle de Catamarca |
| Antonia  | Perez     | San Fernando del Valle de Catamarca |
| Juan     | Perez     | Rio Cuarto                          |
| Maria    | Garcia    | Rio Cuarto                          |
| Jorge    | Rodriguez | Rio Cuarto                          |
| Juana    | Martinez  | Rio Cuarto                          |
| Mario    | Martinez  | Rio Cuarto                          |
| Pedro    | Gonzalez  | Rio Cuarto                          |
| Graciela | Rodriguez | Rio Cuarto                          |
| Antonia  | Perez     | Rio Cuarto                          |
| Juan     | Perez     | Virrey del Pino                     |
| Maria    | Garcia    | Virrey del Pino                     |
| Jorge    | Rodriguez | Virrey del Pino                     |
| Juana    | Martinez  | Virrey del Pino                     |
| Mario    | Martinez  | Virrey del Pino                     |
| Pedro    | Gonzalez  | Virrey del Pino                     |
| Graciela | Rodriguez | Virrey del Pino                     |
| Antonia  | Perez     | Virrey del Pino                     |
+----------+-----------+----------------

-- 3)

SELECT c.nombre FROM ciudades c JOIN provincias p WHERE p.nombre = "Cordoba";

-- 4) 
SELECT fecha FROM compras c JOIN productos p ON c.producto = p.id WHERE descripcion = "Birome azul";

+---------------------+
| fecha               |
+---------------------+
| 2022-05-17 15:00:00 |
+---------------------+
1 row in set (0.001 sec)



-- 5)



-- 6)


 -- 7)


 -- 8)



-- 9)


-- 10)