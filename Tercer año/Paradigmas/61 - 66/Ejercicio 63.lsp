(DEFUN ElimNMayores(L N) (ElimNPrimeros L (ORDENAR L) N))

(DEFUN ElimNPrimeros (L1 L2 N)
  (COND
   ((OR (NULL L1) (= N 0)) L1)
   ((EXISTE L1 (FIRST L2)) (ElimNPrimeros (ELIMsinREPETICION L1 (FIRST L2)) (REST L2) (- N 1)))
   (T (ElimNPrimeros L1 (REST L2) N))))

(DEFUN ORDENAR (L )
  (COND
  ((NULL L) NIL)
  (T (CONS (VALOR L (LAMBDA (X Y)(OR (> X Y) (= X Y)))) (ORDENAR (ELIMsinREPETICION L (VALOR L (LAMBDA (X Y)(OR (> X Y) (= X Y))))))))))

(DEFUN ELIMsinREPETICION (L N)
  (COND
   ((NULL L) NIL)
   ((= (FIRST L) N) (REST L))
   (T (CONS (FIRST L) (ELIM (REST L) N)))))

(DEFUN VALOR(L CONDICION)
  (COND
  ((NULL (REST L)) (FIRST L))
  ((FUNCALL CONDICION (FIRST L) (FIRST (REST L))) (VALOR (CONS (FIRST L) (REST (REST L))) CONDICION))
  (T (VALOR (REST L) CONDICION))))

(DEFUN ELIMconREPETICION (L N);ELIMINA TODAS LAS REPETECIONES DE n EN LA LISTA l
  (COND
   ((NULL L) NIL)
   ((= (FIRST L) N) (ELIM (REST L) N))
   (T (CONS (FIRST L) (ELIM (REST L) N)))))
