#lang racket

(define (my-gcd x y)
  (cond
    [(= x 0) y]
    [(= y 0) x]
    [(= x y) x]
    [(> x y) (my-gcd (- x y) y)]
    [else (my-gcd x (- y x))]
    ) 
)

(= (my-gcd 5 13) 1)
(= (my-gcd 13 1235) 13)
(my-gcd 35 56)
(my-gcd 30 24)