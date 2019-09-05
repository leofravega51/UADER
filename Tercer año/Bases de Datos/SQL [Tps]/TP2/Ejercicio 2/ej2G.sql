--g) Hallar los barcos que, siendo dañados en alguna batalla, participaron posteriormente 
--de alguna otra.

SELECT DISTINCT p.barco
FROM participa p, batalla b, batalla b2
WHERE b.fecha < b2.fecha AND p.resultado = 'Dañado'