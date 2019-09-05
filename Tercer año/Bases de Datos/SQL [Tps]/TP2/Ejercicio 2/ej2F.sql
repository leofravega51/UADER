--f) Hallar los países que tuvieron tanto cruceros como acorazados

SELECT c.pais
FROM clase c
WHERE c.tipo = 'Bb' AND c.pais IN (SELECT c.pais FROM clase c WHERE c.tipo = 'Bc')