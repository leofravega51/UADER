--Obtenemos el codigo de un partido mediante su nombre.

CREATE OR REPLACE FUNCTION codigoPartido(nombre_partido varchar)
RETURNS smallint AS
$$

SELECT p.nrop
FROM partido p
WHERE p.nombrep = nombre_partido;


$$
LANGUAGE SQL