# Subconsultas y JOINS:

## Subconsultas:

Una subconsulta es una consulta dentro de otra, que devuelve un valor o conjunto de valores utilizados en la consulta principal.

### Tipos de subconsultas:

Escalares: Devuelven un solo valor.

```sql
SELECT nombre, salario
FROM empleados
WHERE salario > (SELECT AVG(salario) FROM empleados);
```

De conjunto: Devuelven múltiples valores.

```sql
SELECT nombre
FROM empleados
WHERE id_departamento IN (
    SELECT id
    FROM departamentos
    WHERE nombre = 'Ventas'
);
```

Correlacionadas: Dependen de la fila actual de la consulta externa.

```sql
SELECT nombre
FROM empleados e
WHERE salario > (
    SELECT AVG(salario)
    FROM empleados
    WHERE id_departamento = e.id_departamento
);
```
## JOINS:

Un JOIN permite combinar filas de dos o más tablas relacionadas por una columna común.

### Tipos de JOINS:

Tipo de JOIN	Qué devuelve

INNER JOIN	Solo las filas que coinciden en ambas tablas

```sql
SELECT e.nombre, d.nombre AS departamento
FROM empleados e
INNER JOIN departamentos d
ON e.id_departamento = d.id;
```

LEFT JOIN	Todas las filas de la izquierda + las que coinciden de la derecha

```sql
SELECT e.nombre, d.nombre AS departamento
FROM empleados e
LEFT JOIN departamentos d
ON e.id_departamento = d.id;
```

RIGHT JOIN	Todas las filas de la derecha + las que coinciden de la izquierda

```sql
SELECT e.nombre, d.nombre AS departamento
FROM empleados e
RIGHT JOIN departamentos d
ON e.id_departamento = d.id;
```

FULL OUTER JOIN	Todas las filas, coincidan o no (no soportado en todos los SGBD)

```sql
SELECT e.nombre, d.nombre AS departamento
FROM empleados e
FULL OUTER JOIN departamentos d
ON e.id_departamento = d.id;
```

CROSS JOIN	Producto cartesiano (todas las combinaciones posibles)

```sql
SELECT e.nombre, d.nombre AS departamento
FROM empleados e
CROSS JOIN departamentos d;
```

## 🧠 Diferencias entre Subconsulta y JOIN

| Característica       | Subconsulta                          | JOIN                                     |
|----------------------|---------------------------------------|------------------------------------------|
| Forma de combinar    | Una consulta dentro de otra           | Combina directamente filas de tablas     |
| Flexibilidad         | Más útil para cálculos o filtros      | Mejor para mostrar datos relacionados    |
| Rendimiento          | A veces más lento                     | Suele ser más eficiente                  |
| Legibilidad          | Más difícil de leer en consultas grandes | Más clara cuando se muestran relaciones |


