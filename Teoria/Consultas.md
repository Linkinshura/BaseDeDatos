# Conceptos basicos de Consultas:

## Lo mas basico:

El SELECT nos indica que se desea  hacer una consulta, el FROM nos indica de que tabla proviene

nombre y salario son Atributos de la tabla empleados, en caso de querer mostrar todos los atributos de la tabla estos se remplazan por un *

```sql
SELECT nombre, salario FROM empleados;
```

## Where:

Este nos permite filtrar el contenido que queremos ver con las condiciones que le pidamos

en este caso se mostrara toda la informacion de aquellos empleados con un salario mayor a 3000

Tambien se pueden utilizar los operadores logiccos (AND, OR, NOT) para indicar mas de una condicion

```sql
SELECT * FROM empleados WHERE salario > 3000;
```

## Order By:

Este permite el ordenamiento de una consulta

permitienndo como en este caso ver el nombre y el salario de cada empleado ordenado del que posee menor salario hasta el que posee mayor salario

Este se puede ordenar con RAND(random), DESC(menos a mas) y ASC(mas a menos)

```sql
SELECT nombre, salario FROM empleados ORDER BY salario DESC;
```

## Limit:

Este te permite Limitar la cantidad de filas maximo que queres ver en la consulta

en este caso se muestran los primeros 5 empleados

```sql
SELECT * FROM empleados LIMIT 5;
```

## Distinct 

Este es utilizado para mostrar unicamente las filas que posean el atributo pedido de manera que si hay mas de una fila con el mismo valor solo se agarra la primera de estas

en este caso se agarra cada departamento sin repetir

```sql
SELECT DISTINCT departamento FROM empleados;
```

## Between

Sirve como una condicion que permite buscar valores que esten entre dos valores

En este caso se muestran todos los datos de empleados con un salario entre 3000 y 5000

```sql
SELECT * FROM empleados WHERE salario BETWEEN 3000 AND 5000;
```

## In:

Sirve como una condicion que permite buscar valores que esten entre los mencionados dentro del IN

En este caso se muestran todos los datos de los empleados de los departamentos de venntas y de TI

```sql
SELECT * FROM empleados WHERE departamento IN ('Ventas', 'TI');
```

## Like

Sirve como una condicionn que permite buscar valores que coincidan completamente o parcialmente con lo pedido

En este caso se muestrann los datos de los empleados cuyo nombre empieza con A

Se pueden utilizar dos caracteres:

% representa cualquier número de caracteres.

_ representa un solo carácter.

Dependiendo de la posicion del caracter es como funciona
A% = Empieza con A
%A = Termina con A
%A% = Contiene A

```sql
SELECT * FROM empleados WHERE nombre LIKE 'A%';
```

## Funciones de agrupaciones:

COUNT()	Cuenta registros

SUM()	Suma valores

AVG()	Promedia valores

MAX()	Valor máximo

MIN()	Valor mínimo  

## Group By:

Este permite agrupar por lo pedido

En este caso se muestra el promedio(AVG) de salario de cada departamento

```sql
SELECT departamento, AVG(salario)
FROM empleados
GROUP BY departamento;
```

## Having:

Sirve igual que el WHERE pero este se utiliza despues del GROUP BY y permite utilizar las funciones de agrupacion en sus condiciones

En este caso se muestra se muestran los departamentos con mas de 5 empleados


```sql
SELECT departamento, COUNT(*) 
FROM empleados 
GROUP BY departamento 
HAVING COUNT(*) > 5;
```
## Alias:

Este permite llamar un atributo o tabla de otra manera permitiendo mayor comprension y eficaz para consultas largas

En este ejemplo se le cambia el nombre UNICAMENTE para esta consulta a el atributo nombre y el atributo salario a empleado y sueldo correspondienntemente

```sql
SELECT nombre AS empleado, salario AS sueldo FROM empleados;
```

