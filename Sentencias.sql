DESCRIBE: te muestra los datos de los atributos de cada materia 

DESCRIBE "tabla";




INSERT: Inserta los registros para los atributos 

INSERT INTO "tabla" VALUES
("registros");


INSERT INTO "tabla"("atributos") VALUES
("registros");


UPDATE: Actualiza los datos de los registros 

UPDATE "tabla"
SET "atributo" = "atributo" "operación"
WHERE "atributo" = "condicion";

DELETE: Borra los atributos 

DELETE FROM "tabla" WHERE "atributo" = "condicion";


SELECT: Selecciona los datos que se piden 

SELECT "atributo" FROM "tabla";


TRUNCATE: Borra los atributos 

TRUNCATE "tabla";