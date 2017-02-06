;; Problems:

; For smaller numbers:
; Our treshold for error if 0.001. So we can not correcly calculate roots to
; number whose result will be lesser / closer to the threashold value.

; For larger numbers:
; The decimals that we might require to properly calcualte the threshold for
; larger numbers may get rounded off / trimmed. Thereby not reaching the
; threashold.


;; Solutions:

; for smaller number, we can use a smaller threshold. But this is nothing more
; than a very minor improvement.

; For larger number, maybe we check if old-guess equals new guess. If both are
; equal, we can just stop the recursion and return the guess. This will not
; make it the result accurate, but, atleast it will not go into a infite
; recursion


; I can't think of a better way to solve this Issue. Any Ideas?
