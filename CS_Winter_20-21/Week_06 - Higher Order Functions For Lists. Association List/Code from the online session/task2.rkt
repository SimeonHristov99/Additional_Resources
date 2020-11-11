#lang racket

(define (assoc key xs)
  (cdar (filter (λ (x) (= (car x) key)) xs))
  )

(assoc 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One")))
(equal? (assoc 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")