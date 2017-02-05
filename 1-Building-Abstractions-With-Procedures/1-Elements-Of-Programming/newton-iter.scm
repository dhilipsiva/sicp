(load "math.scm")

(define threshold 0.001)

(define (abssolute x)
  (if (> x 0) x (- x)))

(define (absolute-difference num1 num2)
  (abssolute (-  num1 num2)))

(define (is-good-enough num guess)
  (> threshold (absolute-difference num (square guess))))

(define (newton-iter improve-guess num guess)
  (if (is-good-enough num guess)
	guess
	(newton-iter improve-guess num (improve-guess num guess))))
