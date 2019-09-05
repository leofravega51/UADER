--Creamos la tabla persona

CREATE TABLE persona(
dni integer primary key,
apellido varchar(30),
nombre varchar(30),
fecnac date,
estadoCivil varchar(10),
CONSTRAINT CH_Persona_EstadoCivil CHECK (estadoCivil in
('SOLTERO','CASADO','VIUDO','DIVORCIADO'))
)