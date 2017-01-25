(define (p) (p))
(define (test x y)
  (if (= x 0)
	0
	y))

(test 0 (p))

; In normal order, this is an endless recursive funtion
; In Applicative order, this just returns 0 - Thanks for correcting me @darshanime
