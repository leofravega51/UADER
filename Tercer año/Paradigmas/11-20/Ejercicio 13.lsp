(DEFUN AGREGARELEMLISTO(L ELEM)
  (COND 
   ((< ELEM (FIRST L)) (CONS ELEM L))
   (t (CONS (FIRST L) (AGREGARELEMLISTO (REST L) ELEM)))))