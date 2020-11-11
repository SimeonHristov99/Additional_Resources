#lang racket

(define (ordered? xs p?)
  (equal? xs (sort xs p?))
  )

(equal? (ordered? '(1 2 3 5) (λ (x y) (> x y))) #t)