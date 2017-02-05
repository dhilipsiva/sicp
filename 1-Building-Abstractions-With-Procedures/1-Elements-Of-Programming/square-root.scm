(load "math.scm")

(define accuracy 0.001)

(define guess 1)

(define (abssolute x)
  (if (> x 0) x (- x)))

(define (absolute-difference num1 num2)
  (abssolute (-  num1 num2)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve-guess num guess)
  (average guess (/ num guess)))

(define (is-good-enough num guess)
  (> accuracy (absolute-difference num (square guess))))

(define (newton-iter num guess)
  (if (is-good-enough num guess)
	guess
	(newton-iter num (improve-guess num guess))))

(define (square-root num)
  (newton-iter num guess))

(square-root 4)
