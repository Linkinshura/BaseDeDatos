MariaDB [queries_2023]> SELECT * FROM alumnos;
+----+----------+--------+-----------+-------+--------------+
| id | dni      | nombre | apellido  | curso | esp          |
+----+----------+--------+-----------+-------+--------------+
|  1 | 42123123 | Juan   | Gonzalez  |     4 | Computacion  |
|  2 | 43200110 | Jorge  | Perez     |     4 | Computacion  |
|  3 | 46123456 | Maria  | Rodriguez |     3 | Automotores  |
|  4 | 47000123 | Pedro  | Garcia    |     2 | Ciclo basico |
+----+----------+--------+-----------+-------+--------------+
4 rows in set (0.002 sec)

MariaDB [queries_2023]> SELECT * FROM equipos;
+----+-------------+-------------------------------+--------------+------------+-------------+------------+-------------+
| id | nombre      | estadio                       | ciudad       | fecha_fund | cant_socios | division   | campeonatos |
+----+-------------+-------------------------------+--------------+------------+-------------+------------+-------------+
|  1 | Newells     | Marcelo Bielsa                | Rosario      | 1903-11-03 |       37993 | Primera    |           6 |
|  2 | Ferro       | Arquitecto Ricardo Etcheverri | Buenos Aires | 1904-07-28 |       14000 | Nacional B |           2 |
|  3 | Banfield    | Florencio Sola                | Banfield     | 1896-01-21 |       13276 | Primera    |           1 |
|  4 | Estudiantes | Jorge Luis Hirschi            | La Plata     | 1905-08-04 |       50000 | Primera    |           6 |
|  5 | Gimnasia    | Juan Carmelo Zerillo          | La Plata     | 1887-06-03 |       27444 | Primera    |           1 |
+----+-------------+-------------------------------+--------------+------------+-------------+------------+-------------+
5 rows in set (0.000 sec)

MariaDB [queries_2023]> SELECT * FROM jugadores;
+----+---------+-----------+--------+------+------+--------+
| id | nombre  | apellido  | altura | edad | pos  | equipo |
+----+---------+-----------+--------+------+------+--------+
|  1 | Leonel  | Vangioni  |    177 |   35 | DEF  |      1 |
|  2 | Mariano | Andujar   |    194 |   38 | ARQ  |      4 |
|  3 | Dario   | Cvitanich |    172 |   38 | DEL  |      3 |
|  4 | Brahian | Aleman    |    178 |   32 | MED  |      5 |
+----+---------+-----------+--------+------+------+--------+
4 rows in set (0.000 sec)


MariaDB [queries_2023]> SELECT * FROM materias;
+----+------------+-------+--------------+------------+-------------+----------+
| id | nombre     | curso | esp          | cant_horas | contraturno | rotacion |
+----+------------+-------+--------------+------------+-------------+----------+
|  1 | Algoritmos |     4 | Computacion  |          9 |           1 | NULL     |
|  2 | Biologia   |     2 | Ciclo basico |          2 |           0 | NULL     |
|  3 | Matematica |     4 | Computacion  |          4 |           0 | NULL     |
|  4 | Taller     |     3 | Computacion  |          9 |           1 | Redes    |
|  5 | Lengua     |     4 | Automotores  |          3 |           0 | NULL     |
+----+------------+-------+--------------+------------+-------------+----------+
5 rows in set (0.000 sec)

MariaDB [queries_2023]> SELECT * FROM provincias;
+----+-------------------------------------------------------+-------------------------------------+---------------------------+-----------+------------+----------------+
| id | nombre                                                | capital                             | gobernador                | poblacion | superficie | autonoma_desde |
+----+-------------------------------------------------------+-------------------------------------+---------------------------+-----------+------------+----------------+
|  1 | Buenos Aires                                          | La Plata                            | Axel Kicillof             |  17541141 |     307571 | 1820-02-11     |
|  2 | Catamarca                                             | San Fernando del Valle de Catamarca | Raul Jalil                |    415438 |     102602 | 1821-08-25     |
|  3 | Chaco                                                 | Resistencia                         | Jorge Capitanich          |   1204541 |      99633 | 1951-08-08     |
|  4 | Chubut                                                | Rawson                              | Mariano Arcioni           |    618994 |     224686 | 1955-06-15     |
|  5 | Cordoba                                               | Cordoba                             | Juan Schiaretti           |   3760450 |     165321 | 1820-01-05     |
|  6 | Corrientes                                            | Corrientes                          | Gustavo Valdes            |   1120801 |      88199 | 1814-04-20     |
|  7 | Entre Rios                                            | Parana                              | Gustavo Border            |   1385961 |      78781 | 1814-04-23     |
|  8 | Formosa                                               | Formosa                             | Gildo Insfran             |    605193 |      72066 | 1955-06-15     |
|  9 | Jujuy                                                 | San Salvador de Jujuy               | Gerardo Morales           |    770881 |      53219 | 1836-12-17     |
| 10 | La Pampa                                              | Santa Rosa                          | Carlos Verna              |    358428 |     143440 | 1951-08-08     |
| 11 | La Rioja                                              | La Rioja                            | Ricardo Quintela          |    393531 |      89680 | 1820-03-01     |
| 12 | Mendoza                                               | Mendoza                             | Rodolfo Suarez            |   1990338 |     148827 | 1820-03-01     |
| 13 | Misiones                                              | Posadas                             | Oscar Herrera Ahuad       |   1261294 |      29801 | 1953-12-10     |
| 14 | Neuquen                                               | Neuquen                             | Omar Gutierrez            |    664057 |      94078 | 1955-06-15     |
| 15 | Rio Negro                                             | Viedma                              | Arabela Carreras          |    747610 |     203013 | 1955-06-15     |
| 16 | Salta                                                 | Salta                               | Gustavo Saenz             |   1424397 |     155488 | 1836-12-17     |
| 17 | San Juan                                              | San Juan                            | Sergio U├▒ac               |    781217 |      89651 | 1820-03-01     |
| 18 | San Luis                                              | San Luis                            | Alberto Rodriguez Saa     |    508328 |      76748 | 1820-03-01     |
| 19 | Santa Cruz                                            | Rio Gallegos                        | Alicia Kirchner           |    365698 |     243943 | 1956-11-22     |
| 20 | Santa Fe                                              | Santa Fe                            | Omar Perotti              |   3536418 |     133007 | 1816-05-10     |
| 21 | Santiago del Estero                                   | Santiago del Estero                 | Gerardo Zamora            |    978313 |     136351 | 1820-04-27     |
| 22 | Tierra del Fuego, Antartida e Islas del Atlantico Sur | Ushuaia                             | Gustavo Melella           |    173432 |      21571 | 1990-04-26     |
| 23 | Tucuman                                               | San Miguel de Tucuman               | Juan Luis Manzur          |   1694656 |      22524 | 1825-11-25     |
| 24 | Ciudad Autonoma de Buenos Aires                       | NULL                                | Horacio Rodriguez Larreta |   3075646 |        203 | 1536-02-02     |
+----+-------------------------------------------------------+-------------------------------------+---------------------------+-----------+------------+----------------+
24 rows in set (0.000 sec)
