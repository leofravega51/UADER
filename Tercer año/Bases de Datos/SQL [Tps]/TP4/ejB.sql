--b) Cantidad total de votos emitidos agrupados por Circuito.

SELECT c.nombrecirc, SUM(vm.blancos + vm.nulos + vm.recurridos + vm.impugnados)
FROM votosxmesa vm, escuela e, circuito c
WHERE c.idcircuito  = e.idcircuito
GROUP BY c.nombrecirc