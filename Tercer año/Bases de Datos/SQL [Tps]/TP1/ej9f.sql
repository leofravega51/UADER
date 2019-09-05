--Listar cantidad de horas que se trabaja en el departamento 'PRODUCCION'

﻿SELECT SUM(horas)
FROM trabajapara tp, departamento d
WHERE(d.nombre = 'PRODUCCION' AND d.codigo = tp.codigo)
