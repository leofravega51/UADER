--Listar dni, apellido, nombre, sueldo de los empleados que ganan 
--entre 2000 y 32000 ordenados por apellido y nombre de forma descendente
SELECT dni, apellido, nombre
FROM empleado e
WHERE(e.sueldo BETWEEN 2000 AND 32000)
ORDER BY (e.apellido, e.nombre) DESC