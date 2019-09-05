--Listar los nombres de los empleados que trabajan al menos 6 horas para el departamento 'DEPOSITO'

SELECT e.nombre
FROM empleado e, departamento d, trabajapara tp
WHERE(d.nombre = 'DEPOSITO' AND d.codigo = tp.codigo AND tp.dni = e.dni AND tp.horas >= 6)
