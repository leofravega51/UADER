--a) Porcentaje de mesas escrutadas.

SELECT ( (SELECT COUNT(nromesa)*100 FROM mesa) / (SELECT COUNT(nromesa) FROM votosxmesa)) 