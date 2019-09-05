--Listar el promedio de sueldos del departamento 'COMPUTOS'

﻿SELECT AVG (sueldo)
FROM empleado
WHERE dni IN(SELECT dni
	FROM departamento
	WHERE codigo = 2)
