;(defun anon (movies choice)
;    (cond
;        ((null movies) nil)
;        ((endp movies) nil)
;        ((equal choice "first")
;            (cons (first (first movies))
;                (anon (rest movies) "first")))
;        ((equal choice "second")
;            (cons (first (second (first movies)))
;                (anon (rest movies) "second")))
;        (t
;            (cons (first (third (first movies)))
;                (anon (rest movies) choice)))))

;(setf movielist '(((Shining) (Kubrick) (Nicholson))
;                  ((Pulp Fiction) (Tarantino) (Jackson))
;                  ((Robocop) (Verhoeven) (Weller))
;                  ((Accountant) (OConnor) (Affleck))
;                  ((Lone Wolf and Cub 1) (Misumi) (Wakayama))))

;(anon movielist "first")


(defun init (fun games)
    (cond
        ((null games)nil )
        ((endp games)nil )
        (t (cons (funcall fun (first games))
            (init fun (rest games)))
        )
    )
)

(setf a '((bushwick bill) (tupac shakur) (biggie smalls)))

(init #'second a)

(defun initial (a)
    (list (char (first a)0)(char (second a) 0)))

(init #'initial a)

