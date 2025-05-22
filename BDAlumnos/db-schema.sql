CREATE DATABASE Escuela;

USE Escuela;

CREATE TABLE alumnos (
    DNI INT UNSIGNED PRIMARY KEY,
    nombres VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    fecha_nac DATE NOT NULL,
    curso INT UNSIGNED,
    division INT UNSIGNED,
    especialidad ENUM("Computación", "Automotores", "Ciclo Básico") DEFAULT "Ciclo básico"
);


CREATE TABLE telefonos (
    id INT UNSIGNED PRIMARY KEY,
    parentesco VARCHAR(50),
    tel VARCHAR(15) NOT NULL,  
    alumno INT UNSIGNED,
    FOREIGN KEY (alumno) REFERENCES alumnos(DNI)
);


CREATE TABLE materias (
    id INT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    horas INT UNSIGNED NOT NULL,
    anio INT UNSIGNED NOT NULL,
    especialidad ENUM("Computación", "Automotores", "Ciclo Básico") DEFAULT "Ciclo básico"
);


CREATE TABLE notas (
    id INT UNSIGNED PRIMARY KEY,
    tipo_calificacion VARCHAR(20) NOT NULL,
    nota INT UNSIGNED NOT NULL,
    fecha_carga DATE NOT NULL,
    alumno INT UNSIGNED,
    materia INT UNSIGNED,   
    FOREIGN KEY (alumno) REFERENCES alumnos(DNI), 
    FOREIGN KEY (materia) REFERENCES materias(id) 
);

CREATE TABLE profesores (
CUIL INT PRIMARY KEY,
DNI INT UNSIGNED NOT NULL,
mail VARCHAR(50),
tel INT UNSIGNED,
nombres VARCHAR(20) NOT NULL,
apellidos VARCHAR(20) NOT NULL,
f_nac DATE NOT NULL,
turnos VARCHAR(100)
);

ALTER TABLE materias ADD COLUMN profesor INT;