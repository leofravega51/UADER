--Hallar el número de modelo y el precio de todos los productos 
--(de cualquier tipo) hechos por el fabricante B.

SELECT pc.cod, precio
FROM pc, producto
WHERE (pc.cod = producto.cod AND producto.fabricante = 'B')
UNION 
(SELECT l.cod, precio
FROM laptop l, producto
WHERE (l.cod = producto.cod AND producto.fabricante = 'B')
UNION 
(SELECT i.cod, precio
FROM impresora i, producto
WHERE (i.cod = producto.cod AND producto.fabricante = 'B')
))

