(DEFUN INTERCALARSEGUN (L1 L2 FUNCENTRADA)
  (COND
   ((NULL L1) L2)
   ((NULL L2) L1)
   ((FUNCALL FUNCENTRADA (FIRST L1) (FIRST L2)) (CONS (FIRST L1) (INTERCALARSEGUN L2 (REST L1) FUNCENTRADA)))
   (T (CONS (FIRST L2) (INTERCALARSEGUN L1 (REST L2) FUNCENTRADA)))))
