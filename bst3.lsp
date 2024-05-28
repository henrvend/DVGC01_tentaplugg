(defstruct node
    elem
    left
    right
)



;; insert-funktion för bst, tar emot bst, key och jämförelseoperator
(defun bst-insert (bst key)
    (print "Test")
    (if (null bst)
        (make-node :elem key :right nil :left nil)
        (if (< key (node-elem bst))
            (bst-insert (node-left bst) key)
            (bst-insert (node-right bst) key)
        )
    )
)

(defun in-order-traversal (bst)
  (if (not (null bst))
      (progn
        (in-order-traversal (node-left bst))
        (print (node-elem bst))
        (in-order-traversal (node-right bst)))))


(setf x nil)

(bst-insert x 4)
(bst-insert x 3)
(bst-insert x 8)
(bst-insert x 1)

(in-order-traversal x)