--e) Listar el nombre, el desplazamiento y el número de cañones de los barcos que participaron 
--de la batalla de Guadalcanal.


SELECT b.nombre, c.desplazamiento, c.caniones
FROM clase c, participa p, barco b
WHERE c.clase = b.clase AND b.nombre = p.barco AND p.batalla = 'Guadalcanal'
