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

/*
27/03
*/
1) Mostrar la densidad de población de cada provincia 

SELECT nombre, población, superficie, poblacion / superficie AS densidad_poblacion FROM provincias;

2) Mostrar la cantidad de años que pasaron desde la fundación de cada equipo 

SELECT nombre, YEAR(CURRENT_TIMESTAMP) - YEAR(fecha_fund) AS edad FROM equipos;

3) Mostrar para cada provincia "<en provincia> gobierna <gobernador>"

SELECT CONCAT("en", nombre, "gobierna", gobernador) FROM provincias;

/*
con PIPE (set sql_mode="PIPES_AS_CONCAT";)
*/
SELECT "En" || nombre || "gobierna" || gobernador FROM provincias;

4) Mostrar cuanta gente vive en Argentina

SELECT SUM(población) AS población FROM provincias;

5) Mostrar cuantas materias hay en 4to computación 

SELECT COUNT(*) AS cantidad_materias FROM materias WHERE curso = 4 AND esp = "Computación";

/* ejercicios de La35.net */

44) Mostrar todas las materias de segundo año exceptuando las rotaciones de taller

SELECT nombre FROM materias WHERE año = 2 AND rotacion IS NULL;

45) Mostrar la cantidad total de socios entre todos los equipos de la Argentina 

SELECT SUM(socios)AS cantidad_socios FROM equipos;

46) Mostrar todas las materias que se dictan a contraturno 

SELECT nombre, contraturno FROM materias WHERE contraturno = 1;

47) Mostrar la cantidad total de horas por semana que tiene un alumno de 4to computación 

SELECT SUM(cant_horas)AS horas_totales FROM materias WHERE curso = 4 AND esp = "Computación";