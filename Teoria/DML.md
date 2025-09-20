# Data Manipulation Language

Se utiliza para manipular los datos almacenados en las tablas de una base de datos.

## Select:

Este comando se utiliza para consultar datos de una o más tablas.

```sql
SELECT nombre, salario
FROM empleados
WHERE salario > 3000;
```
## Insert:

Este comando sirve para agregar nuevos registros a una tabla.

```sql
INSERT INTO empleados (id, nombre, salario, fecha_ingreso)
VALUES (1, 'Juan Pérez', 3500, '2023-06-15');
```

## Update:

Permite modificar los valores de uno o más campos en registros ya existentes.

```sql
UPDATE empleados
SET salario = 4000
WHERE id = 1;
```

## Delete:

Se utiliza para eliminar uno o más registros de una tabla.

```sql
DELETE FROM empleados
WHERE id = 1;
```
