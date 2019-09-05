CREATE TABLE logAuditoria(

  operacion varchar(15),

  fecha date,

  tabla varchar(20),

  usuario varchar(40),

  campo varchar(40),

  valor_anterior varchar(40),

  valor_nuevo varchar(40)
  )