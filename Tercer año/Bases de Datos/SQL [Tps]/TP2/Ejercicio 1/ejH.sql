--Hallar aquellos fabricantes que ofrezcan computadoras (sean PC o laptop) 
--con velocidades de al menos 133

SELECT p.fabricante
FROM producto p INNER JOIN pc ON(p.cod = pc.cod AND pc.veloc >= 133)
UNION
SELECT p.fabricante
FROM producto p INNER JOIN laptop l ON(p.cod = l.cod AND l.veloc >=133)