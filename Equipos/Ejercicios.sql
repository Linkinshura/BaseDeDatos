/*
1) Mostrar los equipos de la ciudad de mendoza
*/

SELECT nombre, ciudad, estadio FROM equipos WHERE ciudad = "Mendoza";

NULL

/*
2) Mostrar el equipo mas antiguo, indicar nombre y fundacion
*/

SELECT nombre, fecha_fund FROM equipos ORDER BY fecha_fund ASC LIMIT 1;

+----------+------------+
| nombre   | fecha_fund |
+----------+------------+
| Gimnasia | 1887-06-03 |
+----------+------------+
1 row in set (0.000 sec)

/*
3) Mostrar los nombres de todas las materias de quinto automotores
*/

SELECT nombre FROM materias WHERE curso = 5 AND esp = "Automotores";

NULL
/*
4) Buscar las capitales de provincias donde el gobernador se llama "Juan" o las privincias tengan mas de 3 millones de habitantes
*/

SELECT nombre, capital, gobernador FROM provincias WHERE gobernador LIKE "%Juan%" OR poblacion > 3000000;

+---------------------------------+-----------------------+---------------------------+
| nombre                          | capital               | gobernador                |
+---------------------------------+-----------------------+---------------------------+
| Buenos Aires                    | La Plata              | Axel Kicillof             |
| Cordoba                         | Cordoba               | Juan Schiaretti           |
| Santa Fe                        | Santa Fe              | Omar Perotti              |
| Tucuman                         | San Miguel de Tucuman | Juan Luis Manzur          |
| Ciudad Autonoma de Buenos Aires | NULL                  | Horacio Rodriguez Larreta |
+---------------------------------+-----------------------+---------------------------+
5 rows in set (0.000 sec)
