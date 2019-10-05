-- G) Los docentes que dictan alguna materia en todas las carreras a las que dicha materia pertenece.

SELECT  DISTINCT d.dni
FROM dicta d, materia m
WHERE d.idmateria = m.idmateria AND m.materia = 'Derecho Penal'