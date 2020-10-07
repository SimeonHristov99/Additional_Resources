#lang racket

(define (squares-average x y)
  (/ (+ (* x x) (* y y)) 2))

(squares-average 5 20)