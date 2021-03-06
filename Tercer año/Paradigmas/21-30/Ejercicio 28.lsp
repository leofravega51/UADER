(DEFUN SUMATPRODUCTOR(L1 L2)
  (COND
   ((NULL L1) NIL)
   (T (CONS (* (FIRST L1) (SUMATORIA L2)) (SUMATPRODUCTOR (REST L1) L2)))))

(DEFUN SUMATORIA (L)
  (COND
   ((NULL L) 0)
   (T (+ (FIRST L) (SUMATORIA (REST L))))))