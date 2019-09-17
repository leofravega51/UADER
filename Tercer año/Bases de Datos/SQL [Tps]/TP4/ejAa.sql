--a) Cantidad total de votos emitidos agrupados por escuela.

SELECT e.nombreescuela, SUM(vm.blancos + vm.nulos + vm.recurridos + vm.impugnados)
FROM votosxmesa vm, escuela e, mesa m
WHERE m.idesc  = e.idesc
GROUP BY e.nombreescuela