--Creamos una vista de los titulos de libros retirados por docentes que dictan Algebra

CREATE VIEW libro_materia_docente AS
(
SELECT l.titulo
FROM libro l, ejemplar e, prestamo p, docente d, dicta dic, materia m
WHERE e.idinventario = p.idinventario AND e.isbn = l.isbn AND d.dni = p.dni AND dic.dni = d.dni 
AND m.materia = 'Álgebra'
)