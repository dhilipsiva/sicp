(define (_sqrt x)

  (define accuracy 0.99)

  (define (average x y)
    (/ (+ x y) 2))

  (define (improve g n)
    (average g (/ n g)))

  (define (ratio x y)
    (if (> x y)
      (/ y x)
      (/ x y)))

  (define (is-good-enough g avg)
    (> (ratio g avg) accuracy))

  (define (try g num)
    (if (is-good-enough g (average g (/ num g)))
      g
      (try (improve g num) num)))

  (try 1 x))

(_sqrt 5)
