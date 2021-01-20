#lang racket

(define (my-poly xs)
  (λ (x y)
    (apply * (map (λ (current) (- x current)) (take xs y)))
    )
  )

(equal? ((my-poly (range 2.7 100 0.3)) 2.2 3) -0.4399999999999998)
(equal? ((my-poly (range 2 100)) 2.2 3) 0.2880000000000002)