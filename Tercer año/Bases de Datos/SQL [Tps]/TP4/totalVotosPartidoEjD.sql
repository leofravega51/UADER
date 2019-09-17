--Obtenemos el total de votos de todos los partidos de SUBURBIO NORTE

CREATE VIEW total_votos_partido AS
(
SELECT SUM(vmp.votospartido)
FROM circuito c, votosmesapartido vmp, mesa m, escuela e
WHERE c.nombrecirc = 'SUBURBIO NORTE' AND vmp.nropartido = codigopartido('PJ') AND vmp.nromesa = m.nromesa AND m.idesc = e.idesc AND e.idcircuito  = c.idcircuito
)
