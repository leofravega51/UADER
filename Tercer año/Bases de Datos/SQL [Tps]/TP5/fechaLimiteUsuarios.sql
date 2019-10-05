CREATE VIEW fecha_limite_usuarios AS
(
 SELECT p.fechalimite, p.dni
   FROM prestamo p, usuario u
  WHERE p.fechalimite < p.fechadevolucion AND p.dni = u.dni
  )