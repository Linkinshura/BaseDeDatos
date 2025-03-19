DROP DATABASE IF EXISTS practica_1;
CREATE DATABASE IF NOT EXISTS practica_1;

USE practica_1;

CREATE TABLE provincias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  capital VARCHAR(60),
  gobernador VARCHAR(60),
  poblacion INT,
  superficie INT,
  autonoma_desde DATE
);


