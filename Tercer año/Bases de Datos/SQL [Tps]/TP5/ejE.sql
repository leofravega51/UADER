--e) El título de aquellos libros que hayan sido retirados tanto por docentes que dictan una
--determinada materia como por alumnos que cursan la misma.

SELECT DISTINCT lmd.titulo
FROM libro_materia_alumno lma, libro_materia_docente lmd
GROUP BY lma.titulo, lmd.titulo
HAVING lma.titulo = lmd.titulo