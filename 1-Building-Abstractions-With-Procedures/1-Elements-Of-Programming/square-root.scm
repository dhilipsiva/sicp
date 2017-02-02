(load "math.scm")

(define accuracy 0.001)

(define guess 1)

(define (absolute-difference num1 num2)
		(if (> num1 num2)
			(- num1 num2)
			(- num2 num1)))

(define (improve-guess num guess)
		(/ (+ guess (/ num guess)) 2))

(define (is-good-enough num guess)
		(> accuracy (absolute-difference num (square guess))))

(define (newton-iter num guess)
		(if (is-good-enough num guess)
			guess
			(newton-iter num (improve-guess num guess))))

(define (square-root num)
		(newton-iter num guess))

(square-root 4)
