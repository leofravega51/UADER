--Vista que devuelve la suma de votos de un partido por circuito

CREATE VIEW votoscircuito AS
(SELECT SUM(vmp.votospartido) AS votosp, c.nombrecirc, p.nombrep
FROM votosmesapartido vmp, circuito c, partido p, mesa m, escuela e
WHERE p.nrop = vmp.nropartido AND vmp.nromesa = m.nromesa AND m.idesc = e.idesc AND e.idcircuito = c.idcircuito
GROUP BY c.nombrecirc, p.nombrep)