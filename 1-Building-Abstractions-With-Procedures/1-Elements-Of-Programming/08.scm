(load "math.scm")
(load "newton-iter.scm")

(define (improve-guess num guess)
  (/ (+ (* 2 guess) (/ num (square guess))) 3))

(define (cube-root num)
  (newton-iter improve-guess num 1))

(cube-root 8)
