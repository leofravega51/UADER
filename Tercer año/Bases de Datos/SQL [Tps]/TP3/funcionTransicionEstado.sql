--Funcion para controlar las transiciones de estado civil

CREATE OR REPLACE FUNCTION func_p() RETURNS TRIGGER AS $funcemp$
DECLARE
BEGIN
NEW.estadoCivil := UPPER(NEW.estadoCivil);
if OLD.estadoCivil = 'SOLTERO' AND (NEW.estadoCivil = 'VIUDO' or
NEW.estadoCivil='DIVORCIADO') THEN
RAISE EXCEPTION 'ERROR de transición en estado civil';
END IF;
if (OLD.estadoCivil = 'CASADO' or OLD.estadoCivil = 'DIVORCIADO' OR OLD.estadoCivil =
'VIUDO') AND (NEW.estadoCivil = 'SOLTERO') THEN
RAISE EXCEPTION 'ERROR de transición en estado civil';
END IF;
if OLD.estadoCivil = 'DIVORCIADO' AND (NEW.estadoCivil = 'VIUDO') THEN
RAISE EXCEPTION 'ERROR de transición en estado civil';
END IF;
if OLD.estadoCivil = 'VIUDO' AND (NEW.estadoCivil = 'GORRIADO') THEN
RAISE EXCEPTION 'ERROR de transición en estado civil';
END IF;
RETURN NEW;
END; $funcemp$ LANGUAGE plpgsql;