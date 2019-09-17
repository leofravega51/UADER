--k) Lista ganadora por circuito

SELECT vc.nombrecirc, vc.nombrep, vc.votosp
FROM votoscircuito vc, maximovotoscircuito mvc
WHERE vc.votosp = mvc.vg AND vc.nombrecirc = mvc.nombrecirc