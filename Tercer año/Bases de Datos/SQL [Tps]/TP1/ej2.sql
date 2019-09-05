--Abrir una ventana de consulta SQL y crear las siguientes tablas empleado con los siguientes atributos:
-- dni int, apellido varchar(40), nombre varchar(40), genero char, sueldo int dni debe ser clave primaria

﻿CREATE TABLE empleado(dni int, apellido varchar(40), nombre varchar(40), genero char, sueldo int, PRIMARY KEY (dni))
