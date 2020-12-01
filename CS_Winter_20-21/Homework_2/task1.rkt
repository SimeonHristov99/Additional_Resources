#lang racket

(define (cartesian-product xs ys)
  (foldr append '() (map (λ (x) (map (λ (y) (cons x y)) ys)) xs))
  )

(equal? (cartesian-product '() '()) '())
(equal? (cartesian-product '(1 2) '(3 4)) '((1 . 3) (1 . 4) (2 . 3) (2 . 4)))
(equal? (cartesian-product '(1) '(3 4)) '((1 . 3) (1 . 4)))
(equal? (cartesian-product '(1 2 3 4 5) '(6 7 8)) '((1 . 6) (1 . 7) (1 . 8) (2 . 6) (2 . 7) (2 . 8) (3 . 6) (3 . 7) (3 . 8) (4 . 6) (4 . 7) (4 . 8) (5 . 6) (5 . 7) (5 . 8)))
(equal? (cartesian-product '(1 2) '(3 4)) '((1 . 3) (1 . 4) (2 . 3) (2 . 4)))
(equal? (cartesian-product '(5 4 3 2 1) '(9 8 7 6 5)) '((5 . 9) (5 . 8) (5 . 7) (5 . 6) (5 . 5) (4 . 9) (4 . 8) (4 . 7) (4 . 6) (4 . 5) (3 . 9) (3 . 8) (3 . 7) (3 . 6) (3 . 5) (2 . 9) (2 . 8) (2 . 7) (2 . 6) (2 . 5) (1 . 9) (1 . 8) (1 . 7) (1 . 6) (1 . 5)))