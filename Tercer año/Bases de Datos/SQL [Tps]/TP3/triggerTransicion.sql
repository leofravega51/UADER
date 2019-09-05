--Trigger que llama a la funcion de transiciones de estado

CREATE TRIGGER trigger_p BEFORE UPDATE ON persona
FOR EACH ROW EXECUTE PROCEDURE func_p();