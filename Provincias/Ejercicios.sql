1) Mostrar el nombre y la población de las provincias con mas de 15 millones de habitantes 

SELECT nombre, poblacion FROM provincias WHERE población> 15000000;

2) Mpstrar la población de Neuquén 

SELECT población FROM provincias WHERE nombre = "Neuquén";

3)Mostrar las capitales de todas las provincias menos CABA

SELECT capital FROM provincias WHERE capital != "Ciudad Autónoma de Buenos Aires";

4) Mostrar las provincias que existan como provincias desde antes de 1900

SELECT nombre FROM provincias WHERE YEAR(autonoma_desde) < 1900;

5) Mostrar todas las provincias creadas en la primer mitad del siglo XX

SELECT nombre, autonoma_desde FROM provincias WHERE autonoma_desde BETWEEN "1900-01-01" AND "1950-01-01";

6) Reescribir la consulta anterior sin usar BETWEEN

SELECT nombre, autonoma_desde FROM provincias WHERE autónoma_desde > "1900-01-01" AND autónoma_desde < "1950-01-01";

7) Necesito las capitales de San Juan, San Luis, y Santa Cruz 

SELECT capital FROM provincias WHERE nombre = "San Juan" OR nombre = "San Luis" OR nombre = "Santa Cruz";

8) Reescribir la consulta anterior sin usar OR 

SELECT capital FROM provincias WHERE nombre IN ("San Juan", "San Luis", "Santa Cruz");

9) Quiero la lista de provincias que desconocemos el nombre del Gobernador 

SELECT nombre FROM provincias WHERE gobernador IS NULL;

10) Ahora quiero la superficie de las provincias que su nombre termina con s

SELECT nombre, superficie FROM provincias WHERE nombre LIKE "%s";
