-- 1
SELECT gobernador FROM provincias WHERE nombre = 'Neuquen';

-- 2
SELECT capital FROM provincias WHERE nombre = 'Misiones';

-- 3
SELECT nombre, poblacion
FROM provincias
WHERE poblacion >= 1000000;

-- 4
SELECT nombre, poblacion/superficie AS densidad FROM provincias;

-- 5
SELECT nombre FROM provincias WHERE gobernador = 'Omar Perotti';

-- 6
SELECT nombre FROM provincias WHERE capital IS NOT NULL;

-- 7
SELECT nombre FROM provincias WHERE nombre LIKE 'San %' OR nombre LIKE 'Santa %';

-- 8
SELECT nombre, superficie FROM provincias WHERE superficie BETWEEN 
100000 AND 200000;

-- 9
SELECT nombre, gobernador FROM provincias WHERE gobernador LIKE '% K%';

-- 10
SELECT nombre, poblacion FROM provincias ORDER BY poblacion;

-- 11
SELECT nombre, superficie FROM provincias WHERE capital IS NOT NULL ORDER BY superficie LIMIT 1;

-- 12
SELECT nombre, capital FROM provincias WHERE capital = nombre;

-- 13
SELECT nombre, autonoma_desde FROM provincias ORDER BY autonoma_desde DESC LIMIT 1;

-- 14
SELECT SUM(superficie) FROM provincias;

-- 15
SELECT SUM(poblacion) FROM provincias;

-- 16
SELECT nombre, superficie, (superficie/2780403)*100 AS porcentaje_territorio FROM provincias;

-- 17
SELECT nombre, autonoma_desde FROM provincias WHERE autonoma_desde < '1900-01-01';

-- 18
SELECT COUNT(nombre) FROM provincias WHERE capital IS NOT NULL;

-- 19
SELECT COUNT(gobernador) FROM provincias WHERE gobernador LIKE 'Gustavo %';

-- 20
SELECT nombre, capital FROM provincias WHERE nombre IN ('San Juan', 'San Luis', 'Mendoza');

-- 21
SELECT nombre, YEAR(CURRENT_TIMESTAMP) - YEAR(autonoma_desde) AS autonoma_hace FROM provincias;

-- 22
SELECT CONCAT("Provincia de ", nombre) AS provincianFROM provincias
WHERE capital IS NOT NULL;

-- 23
SELECT nombre, poblacionnFROM provincias WHERE nombre IN ('Tierra del Fuego, Antartida e Islas del Atlantico Sur', 'Santa Cruz', 'Chubut', 'Rio Negro', 'La Pampa', 'Neuquen') ORDER BY poblacion DESC LIMIT 1;

-- 24
SELECT nombre, poblacion, gobernador FROM provincias WHERE poblacion > 3000000 OR gobernador LIKE 'Juan %';

-- 25
SELECT CONCAT('En ', nombre, ' gobierna ', gobernador, CASE WHEN capital IS NOT NULL THEN CONCAT(' y la capital es ', capital) ELSE ' y no tiene capital' END) AS texto FROM provincias;