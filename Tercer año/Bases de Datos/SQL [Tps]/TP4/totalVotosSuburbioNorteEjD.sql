--d) % de votos obtenidos por una lista xx en el circuito “Suburbio norte”

CREATE VIEW total_votos_suburbio_norte AS
(
SELECT SUM(vmp.votospartido)
FROM circuito c, votosmesapartido vmp, mesa m, escuela e
WHERE c.nombrecirc = 'SUBURBIO NORTE' AND vmp.nromesa = m.nromesa AND m.idesc = e.idesc AND e.idcircuito = c.idcircuito
)
