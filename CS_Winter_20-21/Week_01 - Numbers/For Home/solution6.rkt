#lang racket
(define (my-gcd x y)
  (cond [(zero? x) y]
        [(zero? y) x]
        [else (my-gcd y (remainder x y))]))

(= (my-gcd 5 13) 1)
(= (my-gcd 13 1235) 13)
(= (my-gcd 5 50) 1)
(= (my-gcd 10 100) 5)
(= (my-gcd 42 42) 1)
(= (my-gcd 23 23) 23)

