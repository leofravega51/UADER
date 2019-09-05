--a) Los nombres y los países de las clases que llevaban cañones de al menos 16 pulgadas de calibre.

SELECT c.clase, c.pais
FROM clase c
WHERE c.calibre >= 16