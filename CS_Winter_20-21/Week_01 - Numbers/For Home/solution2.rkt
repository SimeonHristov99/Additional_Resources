#lang racket

(define (my-gcd x y)
  (cond
    [(= x 0) x]
    [(= y 0) y]
    [(=(remainder y x) 0) x]
    [(=(remainder x y) 0) y]
    [else (define R (remainder x y))
     (my-gcd y R)]
   )
 )

(= (my-gcd 5 13) 1)
(= (my-gcd 13 1235) 13)
(= (my-gcd 0 13) 0)
(= (my-gcd 7 5) 1)
(= (my-gcd 6 9) 3)