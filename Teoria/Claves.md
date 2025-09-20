# Claves

Las claves (keys) son restricciones que se usan para identificar registros de manera única y establecer relaciones entre tablas en una base de datos relacional.

## Primary Key:

Es un identificador único para cada fila de una tabla. Ningún valor de una clave primaria puede ser nulo (NULL) ni duplicado.

### Características:

Identifica de forma única cada registro.

Solo puede haber una clave primaria por tabla.

Puede estar formada por una o más columnas (clave compuesta).

```sql
CREATE TABLE empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    salario DECIMAL(10, 2)
);
```

## Foreign Key:

Es una columna (o conjunto de columnas) que enlaza una tabla con otra. Sirve para crear relaciones entre tablas y asegurar la integridad referencial.

### Características:

Su valor debe existir en la clave primaria de otra tabla.

Puede haber varias claves foráneas en una tabla.

Permite mantener la coherencia entre datos relacionados.

```sql
CREATE TABLE departamentos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
);
```

## Unique:

Garantiza que los valores en una columna (o combinación de columnas) sean únicos, pero sí permite valores nulos.

```sql
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);
```
## Compuesta:

Es una clave primaria o única que se compone de más de una columna.

```sql
CREATE TABLE inscripciones (
    id_estudiante INT,
    id_curso INT,
    fecha DATE,
    PRIMARY KEY (id_estudiante, id_curso)
);
```
## Candidata:

Son todas las posibles claves que podrían ser una clave primaria.
La clave primaria se elige entre las candidatas.

### Ejemplo:

Si tienes una tabla con dni y email, y ambos son únicos, ambos son claves candidatas. Uno puede ser la PRIMARY KEY, el otro puede quedar como UNIQUE.


