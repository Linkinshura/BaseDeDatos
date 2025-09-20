# Data Definition Languaje

Este apartado es el que contiene las sentencias capaces de definir cosas en la BD

## Create:

Este comando se utiliza para crear nuevos objetos en la base de datos. Por ejemplo, se puede usar para crear tablas, vistas, índices y esquemas.

```sql
CREATE TABLE empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    salario DECIMAL(10, 2),
    fecha_ingreso DATE
);
```
## Alter:

Permite modificar la estructura de los objetos ya existentes en la base de datos. Se puede usar para agregar, modificar o eliminar columnas de una tabla, cambiar tipos de datos de las columnas, renombrar objetos, entre otros.

```sql
ALTER TABLE empleados
ADD edad INT;
````

## Drop:

Se utiliza para eliminar objetos de la base de datos, como tablas, vistas, índices, etc. Cuando se elimina un objeto, también se pierden todos los datos contenidos en él.

```sql
DROP TABLE empleados;
```

## Truncate:

Se utiliza para eliminar todos los registros de una tabla, pero sin eliminar la estructura de la tabla.

```sql
TRUNCATE TABLE empleados;
```

## Rename:

Algunos sistemas de bases de datos también incluyen un comando para renombrar objetos. Este comando no es estándar en todos los sistemas, pero está disponible en algunos.

```sql
RENAME TABLE empleados TO trabajadores;
```
