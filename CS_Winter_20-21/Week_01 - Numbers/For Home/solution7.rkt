#lang racket

(define (my-gcd a b)   
    (cond [(= b 0) a]
          [(= a 0) b]
          [(< a b) (my-gcd a (remainder b a))]
          [else    (my-gcd b (remainder a b))]
          )
  )

(= (my-gcd 5 13) 1)
(= (my-gcd 13 1235) 13)