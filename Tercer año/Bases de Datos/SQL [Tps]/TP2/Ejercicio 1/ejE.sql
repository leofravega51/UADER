--Hallar los fabricantes que venden laptops pero no PCs.

SELECT DISTINCT p.fabricante
FROM producto p
WHERE p.tipo = 'Laptop'
AND p.fabricante NOT IN (SELECT p.fabricante FROM producto p WHERE p.tipo = 'Pc')