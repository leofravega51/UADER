--b) Los libros pertenecientes a la categoría Marketing para los que haya habido pedidos insatisfechos.

SELECT l.titulo
FROM libro l, categoriaLibro cl, pedidoinsatisfecho pi
WHERE l.isbn = cl.isbn AND cl.idcategoria = idCategoria('Marketing') AND l.isbn = pi.isbn