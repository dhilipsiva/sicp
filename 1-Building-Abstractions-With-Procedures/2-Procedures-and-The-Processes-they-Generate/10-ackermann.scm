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


(f 1) ; 2
(f 2) ; 4
(f 3) ; 6
(f 4) ; 8
; So this is, like I guessed, (* 2 n)

(g 1) ; 2
(g 2) ; 4
(g 3) ; 8
(g 4) ; 16
; So this one is (^ 2 n)

(h 1) ; 2     => 2
(h 2) ; 4     => 2 ^ 2
(h 3) ; 16    => 2 ^ 2 ^ 2
(h 4) ; 65536 => 2 ^ 2 ^ 2 ^ 2

(define (h n)
  		(if (= n 1)
  			2
  			(^ (h (- n 1) 2)))) ; h(n) = h(n-1)^2 where n > 1 else 2


(k 1) ; 5   => 5 * 1 ^ 2
(k 2) ; 20  => 5 * 2 ^ 2
(k 3) ; 45  => 5 * 3 ^ 2
(k 4) ; 80  => 5 * 4 ^ 2

(define (k n)
		(* 5 (* n n))) ; k(n) = 5 * n^2
