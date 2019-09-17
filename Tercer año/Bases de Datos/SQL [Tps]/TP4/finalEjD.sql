--d) % de votos obtenidos por una lista xx en el circuito “Suburbio norte”

SELECT p.nombrep, (vp.sum * 100 / tvsn.sum) AS porcentaje_votos
FROM partido p, total_votos_partido vp, total_votos_suburbio_norte tvsn
WHERE p.nrop = codigopartido('PJ')