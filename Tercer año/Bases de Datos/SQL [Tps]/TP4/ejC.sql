--c) Cantidad total de votantes masculinos y femeninos.

SELECT SUM(vm.blancos + vm.nulos + vm.recurridos + vm.impugnados) as votantes_femeninos, 
SUM(vm2.blancos + vm2.nulos + vm2.recurridos + vm2.impugnados) as votantes_masculinos
FROM votosxmesa vm, votosxmesa vm2
WHERE vm.nromesa LIKE 'F%' AND vm2.nromesa LIKE 'M%'
