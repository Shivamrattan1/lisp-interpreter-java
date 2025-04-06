(defun classify (x) (if (< x 0) "Negative" (if (= x 0) "Zero" "Positive")))
(classify -5)
(classify 0)
(classify 9)