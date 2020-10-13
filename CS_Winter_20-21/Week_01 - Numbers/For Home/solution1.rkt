#lang racket
(define (my-gcd x y)
  (cond
    [(= x 0) y]
    [(= y 0) x]
    [else (my-gcd y (remainder x y))]

  )

)


(= (my-gcd 24 36) 6)
(= (my-gcd 13 1235) 13)