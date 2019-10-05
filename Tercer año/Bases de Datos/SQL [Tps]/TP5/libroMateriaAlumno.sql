CREATE VIEW libro_materia_alumno AS
(
 SELECT l.titulo
 FROM libro l, ejemplar e, prestamo p, alumno a, cursa c, materia m
 WHERE e.idinventario = p.idinventario AND e.isbn = l.isbn AND a.dni = p.dni AND c.idmateria = m.idmateria 
 AND c.dni = a.dni AND m.materia = 'Álgebra'
 )