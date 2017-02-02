; Sum of square of largest two numbers
(load "math.scm")

(define (largest num1 num2)
  (if (> num1 num2) num1 num2))

(define (sum-of-square-of-largest-two num1 num2 num3)
  (+ (square (largest num1 num2))
	 (square (largest num2 num3))))

(sum-of-square-of-largest-two 2 3 4)
