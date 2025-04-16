CREATE DATABASE sucursal_autos;

CREATE TABLE personas (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    dni BIGINT,
    domicilio INT
);

CREATE TABLE sucursales (
    id INT PRIMARY KEY,
    ubicacion VARCHAR(100),
    localidad VARCHAR(50),
    m2 INT
);

CREATE TABLE propiedades (
    id INT PRIMARY KEY,
    calle VARCHAR(100),
    altura INT,
    piso INT,
    depto VARCHAR(5),
    cp INT,
    tipo VARCHAR(50)
);

CREATE TABLE autos (
    patente VARCHAR(10) PRIMARY KEY,
    nro_chasis VARCHAR(20),
    nro_motor VARCHAR(20),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    año INT,
    dueño INT,
    FOREIGN KEY (dueño) REFERENCES personas(id)
);

CREATE TABLE personal (
    id INT PRIMARY KEY,
    dni BIGINT,
    salario DECIMAL(10,2),
    f_ingreso DATE,
    rol VARCHAR(50),
    sucursal INT,
    FOREIGN KEY (sucursal) REFERENCES sucursales(id)
);

CREATE TABLE ventas (
    id INT PRIMARY KEY,
    vendedor INT,
    producto VARCHAR(100),
    monto DECIMAL(10,2),
    FOREIGN KEY (vendedor) REFERENCES personal(id)
);
