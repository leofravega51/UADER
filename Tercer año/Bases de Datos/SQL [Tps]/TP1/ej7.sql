--Crear la tabla trabajapara:
--dni int, codigo int, horas int
--clave primaria (dni,codigo)
--Claves foráneas dni ref empleado, codigo ref departamento

﻿CREATE TABLE trabajapara(dni int, codigo int, horas int, PRIMARY KEY(dni, codigo), FOREIGN KEY (dni) REFERENCES empleado(dni), FOREIGN KEY(codigo) REFERENCES departamento(codigo))
