--Creamos la tabla persona

CREATE TABLE persona(legajo int[10] NOT NULL, dni smallint[9], apellido varchar(40), cp int, 
		PRIMARY KEY (legajo), UNIQUE (dni), FOREIGN KEY (cp) REFERENCES ciudad ON DELETE CASCADE ON UPDATE CASCADE)