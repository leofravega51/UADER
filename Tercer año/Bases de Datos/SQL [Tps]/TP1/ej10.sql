--Listar dni, apellido, nombre, sueldo de los empleados que ganan entre 2000 y 32000
SELECT dni, apellido, nombre, sueldo
FROM empleado e
WHERE(e.sueldo BETWEEN 2000 AND 32000)