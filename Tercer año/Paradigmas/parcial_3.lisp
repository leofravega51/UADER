(defvar lista '(1))

;Calcula el elemento menor de una lista
(defun menor (l)
    (cond
        ((null (rest l)) (first l))
        ((< (first l) (menor (rest l))) (first l))
        (t (menor (rest l)))
    )
)

(format t "El elemento menor de la lista ~d es: ~d ~%" lista (menor lista))

;Calcula el elemento mayor de una lista
(defun mayor (l)
    (cond
        ((null (rest l)) (first l))
        ((> (first l) (mayor (rest l))) (first l))
        (t (mayor (rest l)))
    )
)

(format t "El elemento mayor de la lista ~d es: ~d ~%" lista (mayor lista))

;Calcular el rango de una lista
(defun rango (mayor menor)
    (- mayor menor)
)

(format t "El rango de la lista ~d es: ~d ~%" lista (rango (mayor lista) (menor lista)))