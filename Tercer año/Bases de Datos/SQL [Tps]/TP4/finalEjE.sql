--e) Cantidad de votos obtenidos por una lista xx en la escuela “92 Tucumán”

SELECT e.nombreescuela, SUM(vmp.votospartido) as cantidad_votos
FROM  escuela e, votosmesapartido vmp
GROUP BY e.nombreescuela, e.idesc, vmp.nropartido
HAVING e.idesc = codigoEscuela('92 TUCUMAN') AND vmp.nropartido = codigopartido('PJ')