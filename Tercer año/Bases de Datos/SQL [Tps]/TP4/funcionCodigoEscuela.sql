--Obtenemos el codigo de una escuela mediante su nombre

CREATE OR REPLACE FUNCTION codigoEscuela(nombre_escuela varchar)
RETURNS integer AS
$$

SELECT e.idesc
FROM escuela e
WHERE e.nombreescuela = nombre_escuela;


$$
LANGUAGE SQL