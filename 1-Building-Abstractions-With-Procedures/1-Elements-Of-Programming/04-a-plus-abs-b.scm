(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

; The given function will add `a` to absolute value of `b`.
; i.e, it will add if b is grater than 0, else, subtract b.
