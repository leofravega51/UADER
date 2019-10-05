--d) Listar los departamentos de los cuales dependen todos aquellos investigadores que hayan 
--retirado libros editados por 'Sudamericana'.

SELECT DISTINCT  d.departamento, u.nombre
FROM departamento d, investigador i, participa p, usuario u, proyecto pto
WHERE i.dni = u.dni AND p.idproyecto = pto.idproyecto AND i.dni IN 
	(SELECT dni 
	 FROM prestamo p, ejemplar e, libro l 
	 WHERE p.idinventario = e.idinventario AND l.isbn = e.isbn AND l.editorial = 'Sudamericana')