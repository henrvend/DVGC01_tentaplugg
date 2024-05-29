(defstruct person 
    (name)
    (address)
    (phone)
)
(defun create-person (name address phone)
    (make-person
        :name name
        :address address
        :phone phone
    )
)
(setf phonebook (list (create-person "Alice" "Karlstad" "5460")
                        (create-person "Tim" "Arvika" "2138")
                        (create-person "Morgan" "Trelleborg" "3217")
                )
)

(defun all-names(book)
    (cond   
        ((null book) nil)
        ((endp book) nil)
        (t   (cons (person-name(first book)) (all-names(rest book))))    
    )
)

(all-names phonebook)
(mapcar #'person-address phonebook)