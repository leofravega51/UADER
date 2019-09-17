--f) Cantidad total de votos válidos (sin contar blancos, nulos, recurridos e impugnados).

SELECT SUM(vmp.votospartido)
FROM votosmesapartido vmp
