CREATE TABLE log_auditoria(

  id_operacion char(1),

  operacion varchar(15),

  fecha date,

  tabla varchar(20),

  usuario varchar(40),

  campo varchar(40),

  valor_anterior varchar(40),

  valor_nuevo varchar(40)
  )