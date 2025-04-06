(defmacro when (cond body) (list 'if cond body))
(when (= 1 1) (format "It works!"))