--Promedio sueldo empleados por genero

SELECT AVG(sueldo), genero
FROM empleado e
GROUP BY genero