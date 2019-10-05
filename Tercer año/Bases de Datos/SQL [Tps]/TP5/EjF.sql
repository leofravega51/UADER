--f) El nombre de los usuarios a los que se les ha vencido el plazo para devolver algún libro, y
--que con posterioridad a la fecha de vencimiento hayan retirado algún otro.

SELECT DISTINCT u.nombre
FROM fecha_limite_usuarios flu, prestamo p, usuario u
WHERE p.dni = flu.dni AND u.dni = flu.dni AND flu.fechalimite < p.fechaprestamo