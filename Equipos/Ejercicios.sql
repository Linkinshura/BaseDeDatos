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
13. Buscar el gobernador de Neuquén.
SELECT gobernador, nombre, capital FROM provincias WHERE nombre = "Neuquen";
+----------------+---------+---------+
| gobernador     | nombre  | capital |
+----------------+---------+---------+
| Omar Gutierrez | Neuquen | Neuquen |
+----------------+---------+---------+
1 row in set (0.002 sec)

14. Buscar la capital de Misiones.
 SELECT capital, nombre FROM provincias WHERE nombre = "Misiones";
+---------+----------+
| capital | nombre   |
+---------+----------+
| Posadas | Misiones |
+---------+----------+
1 row in set (0.000 sec)

15. Dar una lista de todas las provincias con más de un millón de habitantes.
SELECT nombre, capital, poblacion FROM provincias WHERE poblacion > 10000000;
+--------------+----------+-----------+
| nombre       | capital  | poblacion |
+--------------+----------+-----------+
| Buenos Aires | La Plata |  17541141 |
+--------------+----------+-----------+
1 row in set (0.000 sec)

16. Dar una lista de todas las provincias con su densidad de población.
 SELECT nombre, capital, poblacion / superficie as densidad FROM provincias;
+-------------------------------------------------------+-------------------------------------+------------+
| nombre                                                | capital                             | densidad   |
+-------------------------------------------------------+-------------------------------------+------------+
| Buenos Aires                                          | La Plata                            |    57.0312 |
| Catamarca                                             | San Fernando del Valle de Catamarca |     4.0490 |
| Chaco                                                 | Resistencia                         |    12.0898 |
| Chubut                                                | Rawson                              |     2.7549 |
| Cordoba                                               | Cordoba                             |    22.7464 |
| Corrientes                                            | Corrientes                          |    12.7076 |
| Entre Rios                                            | Parana                              |    17.5926 |
| Formosa                                               | Formosa                             |     8.3978 |
| Jujuy                                                 | San Salvador de Jujuy               |    14.4851 |
| La Pampa                                              | Santa Rosa                          |     2.4988 |
| La Rioja                                              | La Rioja                            |     4.3882 |
| Mendoza                                               | Mendoza                             |    13.3735 |
| Misiones                                              | Posadas                             |    42.3239 |
| Neuquen                                               | Neuquen                             |     7.0586 |
| Rio Negro                                             | Viedma                              |     3.6826 |
| Salta                                                 | Salta                               |     9.1608 |
| San Juan                                              | San Juan                            |     8.7140 |
| San Luis                                              | San Luis                            |     6.6233 |
| Santa Cruz                                            | Rio Gallegos                        |     1.4991 |
| Santa Fe                                              | Santa Fe                            |    26.5882 |
| Santiago del Estero                                   | Santiago del Estero                 |     7.1750 |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur | Ushuaia                             |     8.0401 |
| Tucuman                                               | San Miguel de Tucuman               |    75.2378 |
| Ciudad Autonoma de Buenos Aires                       | NULL                                | 15150.9655 |
+-------------------------------------------------------+-------------------------------------+------------+
24 rows in set (0.001 sec)

17. ¿De qué provincia es gobernador Omar Perotti?  
SELECT nombre, capital, gobernador FROM provincias WHERE gobernador LIKE  "Omar Pe%";
+----------+----------+--------------+
| nombre   | capital  | gobernador   |
+----------+----------+--------------+
| Santa Fe | Santa Fe | Omar Perotti |
+----------+----------+--------------+
1 row in set (0.000 sec)

18. Listar solamente las provincias, sin incluir la Ciudad Autónoma de Buenos Aires.
 SELECT nombre, capital FROM provincias WHERE nombre NOT IN ("Ciudad Autonoma de Buenos Aires");
+-------------------------------------------------------+-------------------------------------+
| nombre                                                | capital                             |
+-------------------------------------------------------+-------------------------------------+
| Buenos Aires                                          | La Plata                            |
| Catamarca                                             | San Fernando del Valle de Catamarca |
| Chaco                                                 | Resistencia                         |
| Chubut                                                | Rawson                              |
| Cordoba                                               | Cordoba                             |
| Corrientes                                            | Corrientes                          |
| Entre Rios                                            | Parana                              |
| Formosa                                               | Formosa                             |
| Jujuy                                                 | San Salvador de Jujuy               |
| La Pampa                                              | Santa Rosa                          |
| La Rioja                                              | La Rioja                            |
| Mendoza                                               | Mendoza                             |
| Misiones                                              | Posadas                             |
| Neuquen                                               | Neuquen                             |
| Rio Negro                                             | Viedma                              |
| Salta                                                 | Salta                               |
| San Juan                                              | San Juan                            |
| San Luis                                              | San Luis                            |
| Santa Cruz                                            | Rio Gallegos                        |
| Santa Fe                                              | Santa Fe                            |
| Santiago del Estero                                   | Santiago del Estero                 |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur | Ushuaia                             |
| Tucuman                                               | San Miguel de Tucuman               |
+-------------------------------------------------------+-------------------------------------+

  19. Buscar las provincias que empiecen con ”San” o ”Santa”.
SELECT nombre, capital FROM provincias WHERE nombre LIKE "San%" OR nombre LIKE "Santa%";
+---------------------+---------------------+
| nombre              | capital             |
+---------------------+---------------------+
| San Juan            | San Juan            |
| San Luis            | San Luis            |
| Santa Cruz          | Rio Gallegos        |
| Santa Fe            | Santa Fe            |
| Santiago del Estero | Santiago del Estero |
+---------------------+---------------------+
5 rows in set (0.000 sec)

20. Buscar las provincias que tengan entre 100000 y 200000 kilómetros cuadrados.
SELECT nombre, superficie FROM provincias WHERE superficie BETWEEN 100000 AND 200000;
+---------------------+------------+
| nombre              | superficie |
+---------------------+------------+
| Catamarca           |     102602 |
| Cordoba             |     165321 |
| La Pampa            |     143440 |
| Mendoza             |     148827 |
| Salta               |     155488 |
| Santa Fe            |     133007 |
| Santiago del Estero |     136351 |
+---------------------+------------+
7 rows in set (0.000 sec)

21. Buscar los gobernadores que tengan apellido que comience con ”K”

SELECT nombre, gobernador FROM provincias WHERE gobernador LIKE "% K%";
+--------------+-----------------+
| nombre       | gobernador      |
+--------------+-----------------+
| Buenos Aires | Axel Kicillof   |
| Santa Cruz   | Alicia Kirchner |
+--------------+-----------------+
2 rows in set (0.000 sec)

22. Listar las provincias y ordenarlas por cantidad de habitantes.
 SELECT nombre, capital, poblacion FROM provincias ORDER BY poblacion DESC;
+-------------------------------------------------------+-------------------------------------+-----------+
| nombre                                                | capital                             | poblacion |
+-------------------------------------------------------+-------------------------------------+-----------+
| Buenos Aires                                          | La Plata                            |  17541141 |
| Cordoba                                               | Cordoba                             |   3760450 |
| Santa Fe                                              | Santa Fe                            |   3536418 |
| Ciudad Autonoma de Buenos Aires                       | NULL                                |   3075646 |
| Mendoza                                               | Mendoza                             |   1990338 |
| Tucuman                                               | San Miguel de Tucuman               |   1694656 |
| Salta                                                 | Salta                               |   1424397 |
| Entre Rios                                            | Parana                              |   1385961 |
| Misiones                                              | Posadas                             |   1261294 |
| Chaco                                                 | Resistencia                         |   1204541 |
| Corrientes                                            | Corrientes                          |   1120801 |
| Santiago del Estero                                   | Santiago del Estero                 |    978313 |
| San Juan                                              | San Juan                            |    781217 |
| Jujuy                                                 | San Salvador de Jujuy               |    770881 |
| Rio Negro                                             | Viedma                              |    747610 |
| Neuquen                                               | Neuquen                             |    664057 |
| Chubut                                                | Rawson                              |    618994 |
| Formosa                                               | Formosa                             |    605193 |
| San Luis                                              | San Luis                            |    508328 |
| Catamarca                                             | San Fernando del Valle de Catamarca |    415438 |
| La Rioja                                              | La Rioja                            |    393531 |
| Santa Cruz                                            | Rio Gallegos                        |    365698 |
| La Pampa                                              | Santa Rosa                          |    358428 |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur | Ushuaia                             |    173432 |
+-------------------------------------------------------+-------------------------------------+-----------+
24 rows in set (0.000 sec)

  23. Buscar la provincia más pequeña.
SELECT nombre, capital, MIN(superficie) FROM provincias;
+--------------+----------+-----------------+
| nombre       | capital  | MIN(superficie) |
+--------------+----------+-----------------+
| Buenos Aires | La Plata |             203 |
+--------------+----------+-----------------+
1 row in set (0.001 sec)

24. Buscar las provincias cuya capital se llame igual que la provincia.
SELECT nombre, capital FROM provincias WHERE nombre = capital;
+---------------------+---------------------+
| nombre              | capital             |
+---------------------+---------------------+
| Cordoba             | Cordoba             |
| Corrientes          | Corrientes          |
| Formosa             | Formosa             |
| La Rioja            | La Rioja            |
| Mendoza             | Mendoza             |
| Neuquen             | Neuquen             |
| Salta               | Salta               |
| San Juan            | San Juan            |
| San Luis            | San Luis            |
| Santa Fe            | Santa Fe            |
| Santiago del Estero | Santiago del Estero |
+---------------------+---------------------+
11 rows in set (0.000 sec)

25. Buscar la provincia más joven.

SELECT nombre, autonoma_desde FROM provincias ORDER BY autonoma_desde DESC LIMIT 1;
+-------------------------------------------------------+----------------+
| nombre                                                | autonoma_desde |
+-------------------------------------------------------+----------------+
| Tierra del Fuego, Antartida e Islas del Atlantico Sur | 1990-04-26     |
+-------------------------------------------------------+----------------+
1 row in set (0.000 sec)

  26. Dar la superficie total de la Argentina.
SELECT SUM(superficie)as superficie_total FROM provincias;
+------------------+
| superficie_total |
+------------------+
|          2780403 |
+------------------+
1 row in set (0.000 sec)

27. Dar la población total de la Argentina.
SELECT SUM(poblacion)as poblacion_total FROM provincias;
+-----------------+
| poblacion_total |
+-----------------+
|        45376763 |
+-----------------+
1 row in set (0.000 sec)

  28. Listar todas las provincias indicando: nombre, superficie y porcentaje de superficie total del país que ocupa.
SELECT nombre, superficie, CONCAT("% ", (superficie / 2780403) * 100) AS porcentaje_sup FROM   provincias;
+-------------------------------------------------------+------------+----------------+
| nombre                                                | superficie | porcentaje_sup |
+-------------------------------------------------------+------------+----------------+
| Buenos Aires                                          |     307571 | % 11.0621      |
| Catamarca                                             |     102602 | % 3.6902       |
| Chaco                                                 |      99633 | % 3.5834       |
| Chubut                                                |     224686 | % 8.0811       |
| Cordoba                                               |     165321 | % 5.9459       |
| Corrientes                                            |      88199 | % 3.1722       |
| Entre Rios                                            |      78781 | % 2.8334       |
| Formosa                                               |      72066 | % 2.5919       |
| Jujuy                                                 |      53219 | % 1.9141       |
| La Pampa                                              |     143440 | % 5.1590       |
| La Rioja                                              |      89680 | % 3.2254       |
| Mendoza                                               |     148827 | % 5.3527       |
| Misiones                                              |      29801 | % 1.0718       |
| Neuquen                                               |      94078 | % 3.3836       |
| Rio Negro                                             |     203013 | % 7.3016       |
| Salta                                                 |     155488 | % 5.5923       |
| San Juan                                              |      89651 | % 3.2244       |
| San Luis                                              |      76748 | % 2.7603       |
| Santa Cruz                                            |     243943 | % 8.7737       |
| Santa Fe                                              |     133007 | % 4.7837       |
| Santiago del Estero                                   |     136351 | % 4.9040       |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur |      21571 | % 0.7758       |
| Tucuman                                               |      22524 | % 0.8101       |
| Ciudad Autonoma de Buenos Aires                       |        203 | % 0.0073       |
+-------------------------------------------------------+------------+----------------+
24 rows in set (0.000 sec)


/*
Trini:
 -- SELECT nombre, superficie, CONCAT("%", (SUM(superficie) / superficie))as porcentaje_superficie FROM provincias;
-- Primer superficie total de la Argentina
  SELECT SUM(superficie) FROM provincias;
-- Despues la query 28
SELECT nombre, superficie, CONCAT("% ", (superficie / 2780403) * 100) AS porcentaje_sup
FROM   provincias;
*/
29. Listar las provincias autónomas desde el siglo XIX.
SELECT nombre, autonoma_desde FROM provincias WHERE YEAR(autonoma_desde) BETWEEN "1801" AND "1900";
+---------------------+----------------+
| nombre              | autonoma_desde |
+---------------------+----------------+
| Buenos Aires        | 1820-02-11     |
| Catamarca           | 1821-08-25     |
| Cordoba             | 1820-01-05     |
| Corrientes          | 1814-04-20     |
| Entre Rios          | 1814-04-23     |
| Jujuy               | 1836-12-17     |
| La Rioja            | 1820-03-01     |
| Mendoza             | 1820-03-01     |
| Salta               | 1836-12-17     |
| San Juan            | 1820-03-01     |
| San Luis            | 1820-03-01     |
| Santa Fe            | 1816-05-10     |
| Santiago del Estero | 1820-04-27     |
| Tucuman             | 1825-11-25     |
+---------------------+----------------+
14 rows in set (0.002 sec)

30. Contar la cantidad de provincias.
SELECT COUNT(*)as cant_prov FROM provincias;
+-----------+
| cant_prov |
+-----------+
|        24 |
+-----------+
1 row in set (0.000 sec)

31. ¿Cuántos gobernadores llamados Gustavo hay?
SELECT COUNT(*)AS cant_Gustavo FROM provincias WHERE gobernador LIKE "Gustavo%";
+--------------+
| cant_Gustavo |
+--------------+
|            4 |
+--------------+
1 row in set (0.000 sec)

32. ¿Cuáles son las capitales de las provincias de Cuyo?

 SELECT nombre, capital FROM provincias WHERE nombre = "San Luis" OR nombre = "Mendoza" OR nombre = "San Juan";
+----------+----------+
| nombre   | capital  |
+----------+----------+
| Mendoza  | Mendoza  |
| San Juan | San Juan |
| San Luis | San Luis |
+----------+----------+
3 rows in set (0.000 sec)

33. Dar una lista con todas las provincias indicando hace cuantos años son autónomas.
+-------------------------------------------------------+---------------+
| nombre                                                | autonoma_hace |
+-------------------------------------------------------+---------------+
| Buenos Aires                                          |           205 |
| Catamarca                                             |           204 |
| Chaco                                                 |            74 |
| Chubut                                                |            70 |
| Cordoba                                               |           205 |
| Corrientes                                            |           211 |
| Entre Rios                                            |           211 |
| Formosa                                               |            70 |
| Jujuy                                                 |           189 |
| La Pampa                                              |            74 |
| La Rioja                                              |           205 |
| Mendoza                                               |           205 |
| Misiones                                              |            72 |
| Neuquen                                               |            70 |
| Rio Negro                                             |            70 |
| Salta                                                 |           189 |
| San Juan                                              |           205 |
| San Luis                                              |           205 |
| Santa Cruz                                            |            69 |
| Santa Fe                                              |           209 |
| Santiago del Estero                                   |           205 |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur |            35 |
| Tucuman                                               |           200 |
| Ciudad Autonoma de Buenos Aires                       |           489 |
+-------------------------------------------------------+---------------+
24 rows in set (0.001 sec)

34. Listar las 23 provincias de la Argentina anteponiendo ”Provincia de ”. Por ejemplo en vez de escribir ”Buenos
Aires” debe decir ”Provincia de Buenos Aires”.SELECT nombre, CONCAT("Provincia de ", nombre)AS provincia FROM provincias;
+-------------------------------------------------------+--------------------------------------------------------------------+
| nombre                                                | provincia                                                          |
+-------------------------------------------------------+--------------------------------------------------------------------+
| Buenos Aires                                          | Provincia de Buenos Aires                                          |
| Catamarca                                             | Provincia de Catamarca                                             |
| Chaco                                                 | Provincia de Chaco                                                 |
| Chubut                                                | Provincia de Chubut                                                |
| Cordoba                                               | Provincia de Cordoba                                               |
| Corrientes                                            | Provincia de Corrientes                                            |
| Entre Rios                                            | Provincia de Entre Rios                                            |
| Formosa                                               | Provincia de Formosa                                               |
| Jujuy                                                 | Provincia de Jujuy                                                 |
| La Pampa                                              | Provincia de La Pampa                                              |
| La Rioja                                              | Provincia de La Rioja                                              |
| Mendoza                                               | Provincia de Mendoza                                               |
| Misiones                                              | Provincia de Misiones                                              |
| Neuquen                                               | Provincia de Neuquen                                               |
| Rio Negro                                             | Provincia de Rio Negro                                             |
| Salta                                                 | Provincia de Salta                                                 |
| San Juan                                              | Provincia de San Juan                                              |
| San Luis                                              | Provincia de San Luis                                              |
| Santa Cruz                                            | Provincia de Santa Cruz                                            |
| Santa Fe                                              | Provincia de Santa Fe                                              |
| Santiago del Estero                                   | Provincia de Santiago del Estero                                   |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur | Provincia de Tierra del Fuego, Antartida e Islas del Atlantico Sur |
| Tucuman                                               | Provincia de Tucuman                                               |
| Ciudad Autonoma de Buenos Aires                       | Provincia de Ciudad Autonoma de Buenos Aires                       |
+-------------------------------------------------------+--------------------------------------------------------------------+
24 rows in set (0.001 sec) 

35. ¿Cuál es la provincia más poblada de la Patagonia?
 SELECT nombre, poblacion FROM provincias WHERE nombre IN ("Rio Negro", "Chubut", "Neuquen", "Santa Cruz", "Tierra del Fuego, Antartida e Islas del atlantico Sur", "La Pampa") ORDER BY poblacion DESC LIMIT 1;
+-----------+-----------+
| nombre    | poblacion |
+-----------+-----------+
| Rio Negro |    747610 |
+-----------+-----------+
1 row in set (0.001 sec)

36. Buscar las capitales donde el gobernador se llama ”Juan” o de provincias con más de 3 millones de habitantes.
SELECT nombre, gobernador, poblacion, capital FROM provincias WHERE gobernador LIKE "Juan%" OR poblacion > 30000000;
+---------+------------------+-----------+-----------------------+
| nombre  | gobernador       | poblacion | capital               |
+---------+------------------+-----------+-----------------------+
| Cordoba | Juan Schiaretti  |   3760450 | Cordoba               |
| Tucuman | Juan Luis Manzur |   1694656 | San Miguel de Tucuman |
+---------+------------------+-----------+-----------------------+
2 rows in set (0.000 sec)

  37. Listar las provincias poniendo por ejemplo, para Buenos Aires: ”En Buenos Aires gobierna Axel Kicillof y la
capital es La Plata”.
SELECT nombre, CONCAT('En ', nombre, ' gobierna ', gobernador, CASE WHEN capital IS NOT NULL THEN CONCAT(' y la capital es ', capital) ELSE ' y no tiene capital' END) AS texto FROM provincias;
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| nombre                                                | texto                                                                                                     |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| Buenos Aires                                          | En Buenos Aires gobierna Axel Kicillof y la capital es La Plata                                           |
| Catamarca                                             | En Catamarca gobierna Raul Jalil y la capital es San Fernando del Valle de Catamarca                      |
| Chaco                                                 | En Chaco gobierna Jorge Capitanich y la capital es Resistencia                                            |
| Chubut                                                | En Chubut gobierna Mariano Arcioni y la capital es Rawson                                                 |
| Cordoba                                               | En Cordoba gobierna Juan Schiaretti y la capital es Cordoba                                               |
| Corrientes                                            | En Corrientes gobierna Gustavo Valdes y la capital es Corrientes                                          |
| Entre Rios                                            | En Entre Rios gobierna Gustavo Border y la capital es Parana                                              |
| Formosa                                               | En Formosa gobierna Gildo Insfran y la capital es Formosa                                                 |
| Jujuy                                                 | En Jujuy gobierna Gerardo Morales y la capital es San Salvador de Jujuy                                   |
| La Pampa                                              | En La Pampa gobierna Carlos Verna y la capital es Santa Rosa                                              |
| La Rioja                                              | En La Rioja gobierna Ricardo Quintela y la capital es La Rioja                                            |
| Mendoza                                               | En Mendoza gobierna Rodolfo Suarez y la capital es Mendoza                                                |
| Misiones                                              | En Misiones gobierna Oscar Herrera Ahuad y la capital es Posadas                                          |
| Neuquen                                               | En Neuquen gobierna Omar Gutierrez y la capital es Neuquen                                                |
| Rio Negro                                             | En Rio Negro gobierna Arabela Carreras y la capital es Viedma                                             |
| Salta                                                 | En Salta gobierna Gustavo Saenz y la capital es Salta                                                     |
| San Juan                                              | En San Juan gobierna Sergio U├▒ac y la capital es San Juan                                                 |
| San Luis                                              | En San Luis gobierna Alberto Rodriguez Saa y la capital es San Luis                                       |
| Santa Cruz                                            | En Santa Cruz gobierna Alicia Kirchner y la capital es Rio Gallegos                                       |
| Santa Fe                                              | En Santa Fe gobierna Omar Perotti y la capital es Santa Fe                                                |
| Santiago del Estero                                   | En Santiago del Estero gobierna Gerardo Zamora y la capital es Santiago del Estero                        |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur | En Tierra del Fuego, Antartida e Islas del Atlantico Sur gobierna Gustavo Melella y la capital es Ushuaia |
| Tucuman                                               | En Tucuman gobierna Juan Luis Manzur y la capital es San Miguel de Tucuman                                |
| Ciudad Autonoma de Buenos Aires                       | En Ciudad Autonoma de Buenos Aires gobierna Horacio Rodriguez Larreta y no tiene capital                  |
+-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
24 rows in set (0.000 sec)

38. Mostrar los equipos de la ciudad de Mendoza.
 SELECT * FROM equipos WHERE ciudad = "Mendoza";
Empty set (0.000 sec)
  
39. Mostrar el equipo más antiguo indicando nombre y fecha de fundación.
SELECT nombre, fecha_fund FROM equipos ORDER BY fecha_fund ASC LIMIT 1;
+----------+------------+
| nombre   | fecha_fund |
+----------+------------+
| Gimnasia | 1887-06-03 |
+----------+------------+
1 row in set (0.000 sec)

  40. Mostrar nombre de equipo y estadio para los equipos cuyo estadio contenga “Armando” en el nombre.

SELECT nombre, estadio FROM equipos WHERE estadio LIKE  "% Armando %";
Empty set (0.000 sec)
  
41. Mostrar la fila correspondiente a la materia con id 4.
+------+
| fila |
+------+
|    1 |
+------+
1 row in set (0.001 sec)

42. Mostrar los nombres de todas las materias de quinto automotores.
SELECT nombre, curso, esp FROM materias WHERE curso = 5 AND esp = "Automotores";
Empty set (0.001 sec)

43. Mostrar los nombres de los equipos fundados en el siglo XX
SELECT nombre FROM equipos WHERE YEAR(fecha_fund) BETWEEN "1901" AND "2000";
+-------------+
| nombre      |
+-------------+
| Newells     |
| Ferro       |
| Estudiantes |
+-------------+
3 rows in set (0.000 sec)

44) Mostrar todas las materias de segundo año exceptuando las rotaciones de taller

SELECT nombre FROM materias WHERE año = 2 AND rotacion IS NULL;

45) Mostrar la cantidad total de socios entre todos los equipos de la Argentina 

SELECT SUM(socios)AS cantidad_socios FROM equipos;

46) Mostrar todas las materias que se dictan a contraturno 

SELECT nombre, contraturno FROM materias WHERE contraturno = 1;

47) Mostrar la cantidad total de horas por semana que tiene un alumno de 4to computación 

SELECT SUM(cant_horas)AS horas_totales FROM materias WHERE curso = 4 AND esp = "Computación";


/*
fin La35.net
*/

/*
ABM
*/

1) Agregar 3 equipos de futbol del Nacional B

INSERT INTO equipos VALUES
(7, "Velez Sarfield", "Estadio Velez", "Buenos Aires", "1910-01-01", 80000, "Primera", 8),

(8, "Ponechispas", "Estadio Viednamita", "La Pampa", "1958-9-11", 5001, "Nacional B", 51),


(6, "La35", "Estadio Latzina", "Buenos Aires", "Buenos Aires", "2025-04-03", 69696, 0);

2) Agregar los datos que faltan de Boca

INSERT INTO equipos VALUES
    -> (9, "Boca Juniors", "La bombonera", "Buenos Aires", "1905-04-05", 120000, "Primera", 100);

3) Actualizar los valores de los gobernadores 

UPDATE provincias SET gobernador = "Axel Kicillof" WHERE nombre = "Buenos Aires";
UPDATE provincias SET gobernador = "Raúl Jalil" WHERE nombre = "Catamarca";
UPDATE provincias SET gobernador = "Jorge Capitanich" WHERE nombre = "Chaco";
UPDATE provincias SET gobernador = "Ignacio Torres" WHERE nombre = "Chubut";
UPDATE provincias SET gobernador = "Juan Schiaretti" WHERE nombre = "Cordoba";
UPDATE provincias SET gobernador = "Gustavo Valdés" WHERE nombre = "Corrientes";
UPDATE provincias SET gobernador = "Gustavo Bordet" WHERE nombre = "Entre Rios";
UPDATE provincias SET gobernador = "Gildo Insfrán" WHERE nombre = "Formosa";
UPDATE provincias SET gobernador = "Gerardo Morales" WHERE nombre = "Jujuy";
UPDATE provincias SET gobernador = "Sergio Ziliotto" WHERE nombre = "La Pampa";
UPDATE provincias SET gobernador = "Ricardo Quintela" WHERE nombre = "La Rioja";
UPDATE provincias SET gobernador = "Rodrigo Suárez" WHERE nombre = "Mendoza";
UPDATE provincias SET gobernador = "Oscar Herrera Ahuad" WHERE nombre = "Misiones";
UPDATE provincias SET gobernador = "Omar Gutiérrez" WHERE nombre = "Neuquen";
UPDATE provincias SET gobernador = "Alberto Weretilneck" WHERE nombre = "Rio Negro";
UPDATE provincias SET gobernador = "Gustavo Sáenz" WHERE nombre = "Salta";
UPDATE provincias SET gobernador = "Sergio Uñac" WHERE nombre = "San Juan";
UPDATE provincias SET gobernador = "Alberto Rodríguez Saá" WHERE nombre = "San Luis";
UPDATE provincias SET gobernador = "Alicia Kirchner" WHERE nombre = "Santa Cruz";
UPDATE provincias SET gobernador = "Maximiliano Pullaro" WHERE nombre = "Santa Fe";
UPDATE provincias SET gobernador = "Gerardo Zamora" WHERE nombre = "Santiago del Estero";
UPDATE provincias SET gobernador = "Gustavo Melella" WHERE nombre = "Tierra del Fuego, Antartida e Islas del Atlantico Sur";
UPDATE provincias SET gobernador = "Osvaldo Jaldo" WHERE nombre = "Tucuman";
UPDATE provincias SET gobernador = "Javier Milei" WHERE nombre = "Ciudad Autonoma de Buenos Aires";

4) Agregar a Uruguay 

INSERT INTO provincias VALUES 
("Uruguay", "Montevideo", 20000000, "Francescoli");

(25, "Uruguay", "Montevideo", "Francescoli", 20000, 52000, "1820-03-19");


5) Restarle el 10% de población a las provincias de Cuyo por el terremoto

UPDATE provincias SET población= poblacion * 0.9 WHERE nombre IN (Mendoza, San Juan, San Luis);

UPDATE provincias SET población= poblacion * 0.9 WHERE nombre IN ("Mendoza", "San Juan", "San Luis");



6)Borrar la provincia de Cordoba porque ya se independizo

DELETE FROM provincias WHERE nombre = "Córdoba";

7) Eliminar todos los clubes con menos de 5000 socios

DELETE FROM equipos WHERE cant_socios < 5000;

8) Agregar un campeonato a Newells
UPDATE equipos SET campeonatos = 9 WHERE nombre = "Newells";

