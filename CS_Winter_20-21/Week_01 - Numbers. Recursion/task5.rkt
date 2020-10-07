#lang racket

(define (inside? x a b)
  (and (>= x a) (<= x b)))

(equal? (inside? 1 2 3) #f)
(equal? (inside? 2 1 3) #t)