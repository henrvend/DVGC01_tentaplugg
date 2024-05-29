(defun separate (names fun)
    (cond
        ((null names)nil )
        ((endp names)nil )
        (t (cons (funcall fun (first names))
            (separate (rest names) fun)) )
    )
)

(setf a '((aretha franklin) (tina turner) (amy winehouse)))

(separate a #'first)
(separate a #'second)
(list (separate a #'first) (separate a #'second))