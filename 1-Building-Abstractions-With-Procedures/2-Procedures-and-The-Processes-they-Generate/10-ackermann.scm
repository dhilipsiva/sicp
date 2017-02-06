(define (A x y)
  (cond ((= y 0) 0)
		((= x 0) (* 2 y))
		((= y 1) 2)
		(else (A (- x 1)
				 (A x (- y 1))))))

(A 1 10)

(A 2 4)

(A 3 3)


(define (f n) (A 0 n)) ; This is just (* 2 n)
(define (g n) (A 1 n)) ; No Idea
(define (h n) (A 2 n)) ; No Idea
(define (k n) (* 5 n n)) ; This is just 5 * n^2
