--Hallar pares de modelos de PC tales que ambos posean la misma velocidad y RAM.
--Un par debe ser listado una sola vez: (i,j) pero no (j,i)

SELECT (pc.cod, pc.veloc, pc.ram), (pc2.cod, pc2.veloc, pc2.ram)
FROM pc INNER JOIN pc pc2 ON (pc.cod != pc2.cod AND pc.veloc = pc2.veloc AND pc.ram = pc2.ram
				AND pc.cod < pc2.cod)