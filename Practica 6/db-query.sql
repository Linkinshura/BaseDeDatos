/*
1) Buscar todos los apellidos de la tabla clientes, sin repetir filas
*/

SELECT DISTINCT apellido
FROM clientes;



/*
2) Dar una lista de los clientes indicando: nombre, apellido y nombre de ciudad.
*/

SELECT c.nombre AS cliente_nombre, 
       c.apellido AS cliente_apellido, 
       ci.nombre AS ciudad_nombre
FROM clientes c
JOIN ciudades ci ON c.localidad = ci.id;

/*
3) Buscar las ciudades de la provincia de Cordoba.
*/

SELECT ci.* FROM ciudades as ci INNER JOIN provincias as p ON (ci.provincia = p.id) HAVING p.nombre = "Cordoba";

/*
4) Indicar fecha y hora de las ventas de biromes azules.
*/

SELECT co.fecha
FROM compras co
JOIN productos p ON co.producto = p.id
WHERE p.descripcion = 'birome azul';

/*
5) ¿Cuantas biromes azules se vendieron?
*/

SELECT SUM(co.cant) AS total_biromes_azules
FROM compras co
JOIN productos p ON co.producto = p.id
WHERE p.descripcion = 'birome azul';


/*
6) Buscar las ciudades con mas de 500000 habitantes, indicando nombre, provincia y poblacion.
*/

SELECT c.nombre AS ciudad_nombre, 
       p.nombre AS provincia_nombre, 
       c.poblacion
FROM ciudades c
JOIN provincias p ON c.provincia = p.id
WHERE c.poblacion > 500000;


/*
7) Indicar el total gastado en cada compra.
*/

SELECT co.id AS compra_id, 
       SUM(co.cant * p.precio) AS total_gastado
FROM compras co
JOIN productos p ON co.producto = p.id
GROUP BY co.id;


/*
8) Escribir una query que produzca el siguiente listado.
+---------------------+--------------------+--------------------------------+--------+------+---------+
| fecha y hora | cliente | item | precio | cant | total |
+---------------------+--------------------+--------------------------------+--------+------+---------+
| 2022-05-12 17:30:00 | Juan Perez | Resma A4 | 182.99 | 10 | 1829.90 |
| 2022-05-12 17:35:00 | Jorge Rodriguez | Marcador de pizarra negro | 99.99 | 20 | 1999.80 |
| 2022-05-13 17:40:00 | Jorge Rodriguez | Cuaderno 48 hojas cuadriculado | 119.99 | 30 | 3599.70 |
| 2022-05-13 17:45:00 | Juana Martinez | Marcador de pizarra negro | 99.99 | 20 | 1999.80 |
| 2022-05-14 16:15:00 | Maria Garcia | Tijera | 89.99 | 20 | 1799.80 |
| 2022-05-15 15:10:00 | Antonia Perez | Birome roja | 13.99 | 10 | 139.90 |
| 2022-05-15 15:15:00 | Graciela Rodriguez | Birome verde | 13.99 | 50 | 699.50 |
| 2022-05-15 18:00:00 | Juana Martinez | Resma A4 | 169.99 | 50 | 8499.50 |
| 2022-05-16 09:00:00 | Pedro Gonzalez | Adhesivo para papel | 59.99 | 15 | 899.85 |
| 2022-05-16 11:30:00 | Mario Martinez | Marcador de pizarra negro | 99.99 | 5 | 499.95 |
| 2022-05-16 17:10:00 | Mario Martinez | Marcador de pizarra azul | 99.99 | 10 | 999.90 |
| 2022-05-16 17:30:00 | Juan Perez | Marcador de pizarra rojo | 99.99 | 30 | 2999.70 |
| 2022-05-16 17:40:00 | Maria Garcia | Marcador de pizarra verde | 99.99 | 25 | 2499.75 |
| 2022-05-17 10:30:00 | Juan Perez | Cuaderno 48 hojas rayado | 119.99 | 15 | 1799.85 |
| 2022-05-17 10:40:00 | Maria Garcia | Cuaderno 48 hojas cuadriculado | 119.99 | 15 | 1799.85 |
| 2022-05-17 15:00:00 | Mario Martinez | Birome azul | 13.99 | 20 | 279.80 |
| 2022-05-17 15:50:00 | Graciela Rodriguez | Birome negra | 13.99 | 10 | 139.90 |
+---------------------+--------------------+--------------------------------+--------+------+---------+
*/

SELECT 
    co.fecha AS "fecha y hora",
    CONCAT(c.nombre, ' ', c.apellido) AS cliente,
    p.descripcion AS item,
    p.precio,
    co.cant,
    (co.cant * p.precio) AS total
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    productos p ON co.producto = p.id
ORDER BY 
    co.fecha;

/*
9) Indicar para cada compra el id de compra y la dirección de envío.
*/

SELECT 
    co.id AS "id de compra",
    CONCAT(c.calle, ' ', c.altura) AS "direccion de envio"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id;

/*
10) Escribir una query que produzca el siguiente listado.
+---------------------+---------------------+--------------------------------+--------+------+---------+
| fecha y hora | cliente | item | precio | cant | total |
+---------------------+---------------------+--------------------------------+--------+------+---------+
| 2022-05-14 16:15:00 | GARCIA, Maria | Tijera | 89.99 | 20 | 1799.80 |
| 2022-05-16 17:40:00 | GARCIA, Maria | Marcador de pizarra verde | 99.99 | 25 | 2499.75 |
| 2022-05-17 10:40:00 | GARCIA, Maria | Cuaderno 48 hojas cuadriculado | 119.99 | 15 | 1799.85 |
| 2022-05-16 09:00:00 | GONZALEZ, Pedro | Adhesivo para papel | 59.99 | 15 | 899.85 |
| 2022-05-13 17:45:00 | MARTINEZ, Juana | Marcador de pizarra negro | 99.99 | 20 | 1999.80 |
| 2022-05-15 18:00:00 | MARTINEZ, Juana | Resma A4 | 169.99 | 50 | 8499.50 |
| 2022-05-16 11:30:00 | MARTINEZ, Mario | Marcador de pizarra negro | 99.99 | 5 | 499.95 |
| 2022-05-16 17:10:00 | MARTINEZ, Mario | Marcador de pizarra azul | 99.99 | 10 | 999.90 |
| 2022-05-17 15:00:00 | MARTINEZ, Mario | Birome azul | 13.99 | 20 | 279.80 |
| 2022-05-15 15:10:00 | PEREZ, Antonia | Birome roja | 13.99 | 10 | 139.90 |
| 2022-05-12 17:30:00 | PEREZ, Juan | Resma A4 | 182.99 | 10 | 1829.90 |
| 2022-05-16 17:30:00 | PEREZ, Juan | Marcador de pizarra rojo | 99.99 | 30 | 2999.70 |
| 2022-05-17 10:30:00 | PEREZ, Juan | Cuaderno 48 hojas rayado | 119.99 | 15 | 1799.85 |
| 2022-05-15 15:15:00 | RODRIGUEZ, Graciela | Birome verde | 13.99 | 50 | 699.50 |
| 2022-05-17 15:50:00 | RODRIGUEZ, Graciela | Birome negra | 13.99 | 10 | 139.90 |
| 2022-05-12 17:35:00 | RODRIGUEZ, Jorge | Marcador de pizarra negro | 99.99 | 20 | 1999.80 |
| 2022-05-13 17:40:00 | RODRIGUEZ, Jorge | Cuaderno 48 hojas cuadriculado | 119.99 | 30 | 3599.70 |
+---------------------+---------------------+--------------------------------+--------+------+---------+
*/

SELECT 
    co.fecha AS "fecha y hora",
    CONCAT(UPPER(c.apellido), ', ', INITCAP(c.nombre)) AS "cliente", 
    p.descripcion AS "item", 
    p.precio AS "precio", 
    co.cant AS "cant", 
    (p.precio * co.cant) AS "total"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    productos p ON co.producto = p.id
ORDER BY 
    co.fecha;

/*
11) Continuando con la consulta del ejercicio anterior, mostrar el total que lleva gastado cada cliente.
*/

SELECT 
    CONCAT(UPPER(c.apellido), ', ', INITCAP(c.nombre)) AS "cliente", 
    SUM(p.precio * co.cant) AS "total gastado"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    productos p ON co.producto = p.id
GROUP BY 
    c.id
ORDER BY 
    "total gastado" DESC;

/*
12) ¿Cual es el cliente que gastó más?
*/

SELECT 
    CONCAT(UPPER(c.apellido), ', ', INITCAP(c.nombre)) AS "cliente", 
    SUM(p.precio * co.cant) AS "total gastado"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    productos p ON co.producto = p.id
GROUP BY 
    c.id
ORDER BY 
    "total gastado" DESC
LIMIT 1;

/*
13) Dar los nombres de los clientes que gastaron $5000 o mas.
*/

SELECT 
    CONCAT(UPPER(c.apellido), ', ', INITCAP(c.nombre)) AS "cliente", 
    SUM(p.precio * co.cant) AS "total gastado"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    productos p ON co.producto = p.id
GROUP BY 
    c.id
HAVING 
    SUM(p.precio * co.cant) >= 5000;

/*
14) El correo necesita imprimir las etiquetas con el nombre del cliente y la dirección para cada envío. Dar una lista
con esos datos para cada compra ordenados por fecha. En una columna apellido y nombre de cliente, en la otra
el domicilio indicando: calle, altura, localidad y provincia.
*/

SELECT 
    CONCAT(UPPER(c.apellido), ', ', INITCAP(c.nombre)) AS "Apellido y Nombre", 
    CONCAT(calle, ' ', altura, ', ', l.nombre, ', ', p.nombre) AS "Domicilio"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    localidades l ON c.localidad = l.id
JOIN 
    provincias p ON l.provincia = p.id
ORDER BY 
    co.fecha;

/*
15) Indicar nombre de provincia y poblacion total de sus ciudades para la tabla ciudades. Mostrar solamente las
provincias que sumen más de un millón de habitantes.
*/

SELECT 
    p.nombre AS "Provincia", 
    SUM(c.poblacion) AS "Poblacion Total"
FROM 
    ciudades c
JOIN 
    provincias p ON c.provincia_id = p.id
GROUP BY 
    p.nombre
HAVING 
    SUM(c.poblacion) > 1000000;

/*
16) Mostrar las compras de Juan Perez ordenadas por fecha. Indicar artículo, precio, cantidad y total de la compra.
*/

SELECT 
    pr.nombre AS "Artículo", 
    pr.precio AS "Precio", 
    co.cant AS "Cantidad", 
    (pr.precio * co.cant) AS "Total"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    productos pr ON co.producto = pr.id
WHERE 
    c.nombre = 'Juan' AND c.apellido = 'Perez'
ORDER BY 
    co.fecha;

/*
17) Buscar el nombre y apellido de los clientes que viven en Santa Fe o Cordoba.
*/

SELECT 
    CONCAT(UPPER(c.apellido), ', ', INITCAP(c.nombre)) AS "Cliente"
FROM 
    clientes c
JOIN 
    localidades l ON c.localidad_id = l.id
JOIN 
    provincias p ON l.provincia_id = p.id
WHERE 
    p.nombre IN ('Santa Fe', 'Córdoba');

/*
18) Dar el total de población para cada región de la Argentina.
*/

SELECT 
    r.nombre AS "Región", 
    SUM(c.poblacion) AS "Población Total"
FROM 
    ciudades c
JOIN 
    regiones r ON c.region_id = r.id
GROUP BY 
    r.nombre;

/*
19) Listar las regiones del país que no lleguen a tres millones de habitantes.
*/

SELECT 
    r.nombre AS "Región", 
    SUM(c.poblacion) AS "Población Total"
FROM 
    ciudades c
JOIN 
    regiones r ON c.region_id = r.id
GROUP BY 
    r.nombre
HAVING 
    SUM(c.poblacion) < 3000000;

/*
20) Mostrar las compras de menos de mil pesos en un listado como el del ejercicio 10.
*/

SELECT 
    co.fecha AS "Fecha y Hora", 
    c.nombre AS "Cliente", 
    pr.nombre AS "Artículo", 
    pr.precio AS "Precio", 
    co.cant AS "Cantidad", 
    (pr.precio * co.cant) AS "Total"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    productos pr ON co.producto = pr.id
WHERE 
    (pr.precio * co.cant) < 1000
ORDER BY 
    co.fecha;

/*
21) Sumar la población de todas las ciudades de la tabla ciudades por region del país.
*/

SELECT 
    r.nombre AS "Región", 
    SUM(c.poblacion) AS "Población Total"
FROM 
    ciudades c
JOIN 
    regiones r ON c.region_id = r.id
GROUP BY 
    r.nombre;

/*
22) Dar la lista de todas las compras como en el ejercicio 10, ordenando por apellido y nombre de manera ascendente
y por total de la compra de manera descendente.
*/

SELECT 
    co.fecha AS "Fecha y Hora", 
    c.apellido || ', ' || c.nombre AS "Cliente", 
    pr.nombre AS "Artículo", 
    pr.precio AS "Precio", 
    co.cant AS "Cantidad", 
    (pr.precio * co.cant) AS "Total"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    productos pr ON co.producto = pr.id
ORDER BY 
    c.apellido ASC, c.nombre ASC, (pr.precio * co.cant) DESC;

/*
23) Contar la cantidad de ciudades en la tabla ciudades por provincia.
*/

SELECT 
    p.nombre AS "Provincia", 
    COUNT(c.id) AS "Cantidad de Ciudades"
FROM 
    ciudades c
JOIN 
    provincias p ON c.provincia_id = p.id
GROUP BY 
    p.nombre;

/*
24) Buscar las regiones del país con cuatro o más provincias.
*/

SELECT 
    r.nombre AS "Región", 
    COUNT(p.id) AS "Cantidad de Provincias"
FROM 
    regiones r
JOIN 
    provincias p ON r.id = p.region_id
GROUP BY 
    r.nombre
HAVING 
    COUNT(p.id) >= 4;

/*
25) Buscar las ciudades de la provincia de Santa Fe con más de quinientos mil habitantes.
*/

SELECT 
    c.nombre AS "Ciudad", 
    c.poblacion AS "Población"
FROM 
    ciudades c
JOIN 
    provincias p ON c.provincia_id = p.id
WHERE 
    p.nombre = 'Santa Fe' 
    AND c.poblacion > 500000;

/*
26) ¿Cuántas resmas A4 se vendieron?
*/

SELECT 
    SUM(co.cant) AS "Total Resmas A4 Vendidas"
FROM 
    compras co
JOIN 
    productos pr ON co.producto = pr.id
WHERE 
    pr.nombre = 'Resma A4';

/*
27) Indicar el total gastado en cada compra.
*/

SELECT 
    co.id AS "ID Compra", 
    c.nombre || ' ' || c.apellido AS "Cliente", 
    pr.nombre AS "Artículo", 
    pr.precio AS "Precio", 
    co.cant AS "Cantidad", 
    (pr.precio * co.cant) AS "Total"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    productos pr ON co.producto = pr.id;

/*
28) Indicar para cada compra el id de compra y la dirección de envío.
*/
SELECT 
    co.id AS "ID Compra", 
    c.nombre || ' ' || c.apellido AS "Cliente", 
    d.direccion AS "Dirección de Envío"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente = c.id
JOIN 
    direcciones d ON co.direccion_envio = d.id;

/*
29) ¿En qué equipo juega Sebastián Villa?
*/

SELECT 
    equipo.nombre AS "Equipo"
FROM 
    jugadores j
JOIN 
    equipos equipo ON j.equipo_id = equipo.id
WHERE 
    j.nombre = 'Sebastián' AND j.apellido = 'Villa';

/*
30) Dar una lista de todos los jugadores en equipos rosarinos indicando nombre, apellido y posición.
*/

SELECT 
    j.nombre AS "Nombre", 
    j.apellido AS "Apellido", 
    j.posicion AS "Posición", 
    e.nombre AS "Equipo"
FROM 
    jugadores j
JOIN 
    equipos e ON j.equipo_id = e.id
WHERE 
    e.ciudad = 'Rosario';

/*
31) Dar la lista de materias pendientes (no aprobadas) del alumno con DNI 40123456.
*/

SELECT 
    m.nombre AS "Materia"
FROM 
    materias m
JOIN 
    alumnos_materias am ON m.id = am.materia_id
WHERE 
    am.alumno_dni = 40123456 AND am.estado = 'Pendiente';

/*
32) Dar la cantidad de materias aprobadas para cada alumno, indicando DNI, nombre, apellido y cantidad de materias
aprobadas.
*/

SELECT 
    a.dni AS "DNI", 
    a.nombre AS "Nombre", 
    a.apellido AS "Apellido", 
    COUNT(am.materia_id) AS "Materias Aprobadas"
FROM 
    alumnos a
JOIN 
    alumnos_materias am ON a.dni = am.alumno_dni
WHERE 
    am.estado = 'Aprobada'
GROUP BY 
    a.dni, a.nombre, a.apellido;

/*
33) Dar una lista con los arqueros de cada equipo de primera división indicando nombre de equipo, nombre, apellido
y altura.
*/

SELECT 
    e.nombre AS "Equipo", 
    j.nombre AS "Nombre", 
    j.apellido AS "Apellido", 
    j.altura AS "Altura"
FROM 
    jugadores j
JOIN 
    equipos e ON j.equipo_id = e.id
WHERE 
    j.posicion = 'Arquero' AND e.division = 'Primera';

/*
34) Buscar el arquero más alto de primera división.
*/

SELECT 
    j.nombre AS "Nombre", 
    j.apellido AS "Apellido", 
    j.altura AS "Altura", 
    e.nombre AS "Equipo"
FROM 
    jugadores j
JOIN 
    equipos e ON j.equipo_id = e.id
WHERE 
    j.posicion = 'Arquero' AND e.division = 'Primera'
ORDER BY 
    j.altura DESC
LIMIT 1;

/*
35) Buscar los delanteros de Ferro indicando nombre, apellido y edad. Ordenarlos del más joven al más viejo.
*/

SELECT 
    j.nombre AS "Nombre", 
    j.apellido AS "Apellido", 
    j.edad AS "Edad"
FROM 
    jugadores j
JOIN 
    equipos e ON j.equipo_id = e.id
WHERE 
    e.nombre = 'Ferro' AND j.posicion = 'Delantero'
ORDER BY 
    j.edad ASC;

/*
36) Crear un listado de partidos indicando local y visitante y cruzando todos los equipos entre sí.
*/

SELECT 
    e_local.nombre AS "Local", 
    e_visitante.nombre AS "Visitante"
FROM 
    equipos e_local
JOIN 
    equipos e_visitante ON e_local.id != e_visitante.id
ORDER BY 
    e_local.nombre, e_visitante.nombre;

/*
37) Contar cuántos equipos de fútbol hay por cada ciudad.
*/

SELECT 
    e.ciudad AS "Ciudad", 
    COUNT(e.id) AS "Cantidad de Equipos"
FROM 
    equipos e
GROUP BY 
    e.ciudad;

/*
38) Sumar los campeonatos de los equipos de fútbol por ciudad.
*/

SELECT 
    e.ciudad AS "Ciudad", 
    SUM(e.campeonatos) AS "Total Campeonatos"
FROM 
    equipos e
GROUP BY 
    e.ciudad;

/*
39) Mostrar la compra promedio por cliente indicando nombre y apellido del cliente.
*/

SELECT 
    c.nombre AS "Nombre", 
    c.apellido AS "Apellido", 
    AVG(p.precio * i.cantidad) AS "Compra Promedio"
FROM 
    clientes c
JOIN 
    compras co ON c.id = co.cliente_id
JOIN 
    items_compras i ON co.id = i.compra_id
JOIN 
    productos p ON i.producto_id = p.id
GROUP BY 
    c.id;

/*
40) Mostrar la altitud promedio de las ciudades de cada provincia, ordenar por nombre de provincia.
*/

SELECT 
    p.nombre AS "Provincia", 
    AVG(c.altitud) AS "Altitud Promedio"
FROM 
    provincias p
JOIN 
    ciudades c ON p.id = c.provincia_id
GROUP BY 
    p.nombre
ORDER BY 
    p.nombre;

/*
41) Contar la cantidad de materias por año, discriminando en el caso de tercero a sexto año entre computación y
automotores.
*/


/*
42) Crear un listado con la nota final de cada materia para cada alumno. La nota final es el promedio de todas las
notas parciales. Indicar nombre y apellido del alumno y nombre de la materia.
*/

SELECT 
    a.nombre AS "Nombre", 
    a.apellido AS "Apellido", 
    m.nombre AS "Materia", 
    AVG(n.nota) AS "Nota Final"
FROM 
    alumnos a
JOIN 
    notas n ON a.dni = n.alumno_dni
JOIN 
    materias m ON n.materia_id = m.id
GROUP BY 
    a.dni, m.id;

/*
43) Agregar al listado anterior el curso y la especialidad.
*/

SELECT 
    a.nombre AS "Nombre", 
    a.apellido AS "Apellido", 
    m.nombre AS "Materia", 
    AVG(n.nota) AS "Nota Final", 
    a.curso AS "Curso", 
    a.especialidad AS "Especialidad"
FROM 
    alumnos a
JOIN 
    notas n ON a.dni = n.alumno_dni
JOIN 
    materias m ON n.materia_id = m.id
GROUP BY 
    a.dni, m.id;

/*
44) Buscar el delantero más joven del Nacional B.
*/

SELECT 
    j.nombre AS "Nombre", 
    j.apellido AS "Apellido", 
    j.edad AS "Edad", 
    e.nombre AS "Equipo"
FROM 
    jugadores j
JOIN 
    equipos e ON j.equipo_id = e.id
WHERE 
    e.division = 'Nacional B' AND j.posicion = 'Delantero'
ORDER BY 
    j.edad ASC
LIMIT 1;

/*
45) Mostrar todas las ciudades de la provincia de Buenos Aires con más de cien mil habitantes.
*/

SELECT 
    c.nombre AS "Ciudad", 
    c.poblacion AS "Población"
FROM 
    ciudades c
JOIN 
    provincias p ON c.provincia_id = p.id
WHERE 
    p.nombre = 'Buenos Aires' AND c.poblacion > 100000;

/*
46) Indicar la ciudad más antigua por región de la Argentina.
*/

SELECT 
    p.region AS "Región", 
    c.nombre AS "Ciudad", 
    MIN(c.fecha_fundacion) AS "Fecha de Fundación"
FROM 
    ciudades c
JOIN 
    provincias p ON c.provincia = p.id
GROUP BY 
    p.id
ORDER BY 
    p.nombre;

/*
47) Mostrar las materias cuya nota final sea menor a 6 y tengan 4 horas o más de Pedro García.
*/

SELECT 
    m.nombre AS "Materia", 
    AVG(n.nota) AS "Nota Final", 
    m.horas AS "Horas"
FROM 
    materias m
JOIN 
    notas n ON m.id = n.materia_id
JOIN 
    alumnos a ON n.alumno_dni = a.dni
WHERE 
    AVG(n.nota) < 6 AND m.horas >= 4 AND a.nombre = 'Pedro' AND a.apellido = 'García'
GROUP BY 
    m.id;

/*
48) Dar una lista indicando la cantidad de jugadores que tiene cada equipo.
*/

SELECT 
    e.nombre AS "Equipo", 
    COUNT(j.id) AS "Cantidad de Jugadores"
FROM 
    equipos e
JOIN 
    jugadores j ON e.id = j.equipo_id
GROUP BY 
    e.nombre;

/*
49) Indicar fecha, hora, producto y nombre del cliente que hizo la compra más cara.
*/

SELECT 
    co.fecha AS "Fecha", 
    co.hora AS "Hora", 
    p.nombre AS "Producto", 
    c.nombre AS "Cliente", 
    c.apellido AS "Apellido", 
    (i.precio * i.cantidad) AS "Total de la Compra"
FROM 
    compras co
JOIN 
    clientes c ON co.cliente_id = c.id
JOIN 
    items_compras i ON co.id = i.compra_id
JOIN 
    productos p ON i.producto_id = p.id
ORDER BY 
    (i.precio * i.cantidad) DESC
LIMIT 1;

/*
50) Buscar el jugador más viejo del equipo más viejo. Indicar nombre de equipo, fecha de fundación, nombre del
jugador y edad.
*/
SELECT 
    e.nombre AS "Equipo", 
    e.fecha_fundacion AS "Fecha de Fundación", 
    j.nombre AS "Jugador", 
    j.apellido AS "Apellido", 
    j.edad AS "Edad"
FROM 
    equipos e
JOIN 
    jugadores j ON e.id = j.equipo_id
WHERE 
    e.fecha_fundacion = (SELECT MIN(fecha_fundacion) FROM equipos)
ORDER BY 
    j.edad DESC
LIMIT 1;

