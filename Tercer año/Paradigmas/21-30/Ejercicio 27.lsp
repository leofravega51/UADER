(DEFUN EVALUAR (L) 
  (COND
  ((NUMBERP L) L)
  (T (FUNCALL (FIRST L) (EVALUAR (FIRST (REST L))) (EVALUAR (FIRST (REST (REST L))))))))