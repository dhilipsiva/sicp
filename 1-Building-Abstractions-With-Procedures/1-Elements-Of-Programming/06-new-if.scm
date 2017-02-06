; Custom `if` clause

(define (new-if predicate then-clause else-clause)
		((cond	(predicate then-clause)
				(else else-clause))))

; If we use this custom predicate, then our program will go into an infinite
; recursive loop.
