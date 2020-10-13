#lang racket

(define (gcd a b)
  (cond [(= a 0) b]
        [(= b 0) a]
        [(< a b) (gcd a (remainder b a))]
        [else (gcd b (remainder a b))]   
  )
)

(gcd 84 18)
(= (gcd 5 13) 1)
(= (gcd 13 1235) 13)