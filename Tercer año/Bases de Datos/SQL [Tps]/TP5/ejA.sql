--a) Aquellos ejemplares que jamás hayan sido retirados.

SELECT DISTINCT l.titulo, l.isbn
FROM libro l, ejemplar e
WHERE l.isbn = e.isbn AND e.idinventario NOT IN (SELECT idinventario FROM prestamo)