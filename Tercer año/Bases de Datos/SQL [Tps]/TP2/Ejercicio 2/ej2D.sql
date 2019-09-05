--d) El tratado de Washington de 1921 prohibió los barcos de más de 35000 toneladas. 
--Listar los barcos que violaron el tratado de Washington.

SELECT c.clase
FROM clase c
WHERE c.desplazamiento > 35000