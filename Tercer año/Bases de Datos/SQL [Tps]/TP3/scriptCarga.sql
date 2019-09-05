--Insertamos datos en la tabla persona
INSERT INTO persona(dni, apellido, nombre, fecnac, estadoCivil) VALUES(39194494, 'Fravega', 'Leandro', '07/02/1996', 'Soltero');
INSERT INTO persona(dni, apellido, nombre, fecnac, estadoCivil) VALUES(36729524, 'Cepeda', 'Leandro', '07/02/1994', 'Soltero');
INSERT INTO persona(dni, apellido, nombre, fecnac, estadoCivil) VALUES(24893555, 'Perez', 'Juan', '15/09/1999', 'Soltero');

--Insertamos datos con el campo apellido vacio
INSERT INTO persona(dni, apellido, nombre, fecnac, estadoCivil) VALUES(21546987, '', 'Leandro', '07/02/1996', 'Soltero');
--Nos devuelve un error indicando que no puede tener un apellido vacio


--Insertamos datos donde la edad de la persona es < 18
INSERT INTO persona(dni, apellido, nombre, fecnac, estadoCivil) VALUES(47245632, 'Pedraza', 'Pedro', '15/03/2005', 'Soltero');
--Nos devuelve un error indicando que no puede ser menor de 18 años

--Insertamos datos de una persona con un estado civil inexistente
INSERT INTO persona(dni, apellido, nombre, fecnac, estadoCivil) VALUES(47245632, 'Enzo', 'Perez', '15/03/1996', 'Solo');
--Nos devuelve un error debido a las restricciones del campo  estadoCivil


--Actualizamos el estado civil de una persona con una transicion no contemplada
UPDATE persona SET estadoCivil = 'Viudo' WHERE dni = 39194494;
--Nos devuelve un error debido a que la transicion del estado civil no es la contemplada en
--las reglas de negocio.
