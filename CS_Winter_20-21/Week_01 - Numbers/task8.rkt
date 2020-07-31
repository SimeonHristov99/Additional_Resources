#lang racket

(define (mygcd x y)
  (cond
    [(= x 0) y]
    [(= y 0) x]
    [else (mygcd y (remainder x y))]))