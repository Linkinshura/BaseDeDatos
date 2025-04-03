INSERT:

INSERT INTO "tabla" VALUES
("registros");

Ejemplo:

INSERT INTO alumnos VALUES 
("Juan", "Perez", 49666222, "2008-02-18");


UPDATE:

UPDATE "tabla"
SET "atributo" = "atributo" "operación"
WHERE "atributo" = "condicion";

Ejemplo:

UPDATE provincias
SET población = población * 1.1;

DELETE:

DELETE FROM "tabla" WHERE "atributo" = "condicion";

Ejemplo:

DELETE FROM alumnos
WHERE dni = 49666222;


SELECT:

SELECT "atributo" FROM "tabla";

Ejemplo:

SELECT * FROM provincias;
