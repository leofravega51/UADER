--c) Cantidad total de votantes masculinos y femeninos.

SELECT COUNT(*) as votantes_femeninos
FROM votosxmesa vm
WHERE LIKE vm.nromesa 'F%'
UNION{
SELECT COUNT(*) as votantes_masculinos
FROM votosxmesa vm
WHERE LIKE vm.nromesa 'M%'
}