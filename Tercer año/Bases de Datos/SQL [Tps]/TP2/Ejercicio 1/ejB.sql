--¿Qué fabricantes hacen laptops con un disco duro de al menos un gigabyte?

SELECT fabricante
FROM producto p, laptop l
WHERE (p.cod = l.cod AND l.hd >= 1)