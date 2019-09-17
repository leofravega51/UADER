CREATE VIEW maximovotoscircuito AS 
(SElECT MAX(vc.votosp) AS vg, vc.nombrecirc
FROM votoscircuito vc
GROUP BY vc.nombrecirc
ORDER BY vc.nombrecirc)
