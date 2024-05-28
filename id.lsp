(defun is-id (str)
    (if (and (alpha-char-p (char str 0)) (every #'alphanumericp str ))
        (print "ID")
        (print "Not")
    )    
)

(is-id "alpha3")
(is-id "3beta")