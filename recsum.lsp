(defun recsum(arr)
    (if(null arr)
        0
        (+ (car arr) (recsum (cdr arr)))
    )    
)

(setf a'(1 2 3 4 5))
(recsum a)