--c) Hallar los barcos hundidos en la batalla del Atlántico Norte

SELECT p.barco
FROM participa p
WHERE p.batalla = 'Atlantico Norte' AND p.resultado = 'Hundido'