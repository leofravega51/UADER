--Hallar aquellos tamaños de discos que ocurren en dos o más PCs.

SELECT pc.hd, COUNT (pc.hd)
FROM pc 
GROUP BY pc.hd
HAVING COUNT(pc.hd)>= 2