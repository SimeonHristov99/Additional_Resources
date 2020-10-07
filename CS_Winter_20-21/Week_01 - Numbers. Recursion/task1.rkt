#lang racket

(define (my-min x y)
  (if (< x y)
        x
        y))

(equal? (my-min 13 5) 5)