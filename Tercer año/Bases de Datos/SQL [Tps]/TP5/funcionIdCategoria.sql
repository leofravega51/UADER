CREATE OR REPLACE FUNCTION idCategoria(nombre_categoria varchar)
RETURNS smallint AS
$$

SELECT c.idcategoria
FROM categoria c
WHERE c.categoria = nombre_categoria;


$$
LANGUAGE SQL