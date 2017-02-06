; The following fcuntion is an recursive function becuase it has to return the
; value so that `inc` can be applied

(define (+ a b)
  (if (= a 0)
	b
	(inc (+ (dec a) b))))


; The following problem is a tail-recurion procedure.
; So the process is Iterative
(define (+ a b)
  (if (= a 0)
	b
	(+ (dec a) (inc b))))
