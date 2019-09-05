--Creamos la funcion para el trigger

CREATE OR REPLACE FUNCTION func_e() RETURNS TRIGGER AS $funcemp$
DECLARE
edad smallint ;
estadocivil varchar(10);
BEGIN
NEW.estadoCivil := UPPER(NEW.estadoCivil);
edad := date_part('year',age(NEW.fecnac));
IF NEW.apellido = '' THEN
RAISE EXCEPTION 'no puede tener apellido vacío';
END IF;
IF edad < '18' THEN
RAISE EXCEPTION 'no puede ser menor de 18 años';
END IF;
RETURN NEW;
END; $funcemp$ LANGUAGE plpgsql;