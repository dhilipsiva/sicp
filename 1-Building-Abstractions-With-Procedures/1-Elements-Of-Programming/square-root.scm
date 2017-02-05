(load "newton-iter.scm")

(define (average x y)
  (/ (+ x y) 2))

(define (improve-guess num guess)
  (average guess (/ num guess)))

(define (square-root num)
  (newton-iter improve-guess num 1))

(square-root 4)
