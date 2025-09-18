DROP DATABASE IF EXISTS practica_6;
CREATE DATABASE IF NOT EXISTS practica_6;

USE practica_6;

CREATE TABLE provincias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  capital VARCHAR(60),
  gobernador VARCHAR(60),
  poblacion INT,
  superficie INT,
  region VARCGAR(40), NOT NULL,
  autonoma_desde DATE
);

CREATE TABLE ciudades (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  provincia INT,
  poblacion INT,
  superficie INT,
  fundacion DATE,
  intendente VARCHAR(60),
  altitud INT,
  FOREIGN KEY (provincia) REFERENCES provincias(id)
);

CREATE TABLE clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  apellido VARCHAR(60),
  tel VARCHAR(20),
  calle VARCHAR(40),
  altura INT,
  localidad INT,
  FOREIGN KEY (localidad) REFERENCES ciudades(id)
);

CREATE TABLE productos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  descripcion VARCHAR(60),
  marca VARCHAR(40),
  precio DECIMAL(7,2),
  stock INT
);

CREATE TABLE compras (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
  cliente INT NOT NULL,
  producto INT NOT NULL,
  cant INT DEFAULT 1,
  FOREIGN KEY (cliente) REFERENCES clientes(id),
  FOREIGN KEY (producto) REFERENCES productos(id)
);

CREATE TABLE equipos(
    id INT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    ciudad VARCHAR(40) NOT NULL,
    fecha_fund DATE NOT NULL,
    division VARCHAR(40) NOT NULL,
    campeonatos INT UNSIGNED
);


CREATE TABLE jugadores(
    id INT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    altura INT UNSIGNED NOT NULL,
    pos ENUM("ARQ", "DEF", "MED", "DEL"),
    equipo INT UNSIGNED NOT NULL,
    FOREIGN KEY(equipo) REFERENCES equipos(id)
);

CREATE TABLE materias(
    id INT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    curso INT UNSIGNED NOT NULL,
    esp ENUM("Ciclo Basico", "Automotor", "Computacion") NOT NULL,
    cant_horas INT UNSIGNED NOT NULL,
    contraturno BOOLEAN NOT NULL,
    rotacion VARCHAR(40)
);

CREATE TABLE alumnos(
    id INT UNSIGNED PRIMARY KEY,
    DNI INT UNSIGNED NOT NULL UNIQUE,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    curso INT UNSIGNED NOT NULL,
    esp ENUM("Ciclo Basico", "Automotor", "Computacion") NOT NULL
);


CREATE TABLE notas(
    id INT UNSIGNED PRIMARY KEY,
    alumno INT UNSIGNED NOT NULL,
    materia INT UNSIGNED NOT NULL,
    nota INT UNSIGNED NOT NULL,
    FOREIGN KEY(alumno) REFERENCES alumnos(id)
    FOREIGN KEY(materia) REFERENCES materias(id)
);
