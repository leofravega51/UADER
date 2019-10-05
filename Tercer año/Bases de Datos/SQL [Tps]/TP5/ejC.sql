--c) Los alumnos de Concepción del Uruguay que hayan retirado al menos dos libros durante los años 1988 al 1991.

SELECT u.nombre, u.dni
FROM usuario u, alumno a, prestamo p
WHERE 2 < SOME (SELECT COUNT(*) FROM prestamo p, alumno a WHERE p.dni = a.dni) AND u.dni = a.dni AND u.dni = p.dni