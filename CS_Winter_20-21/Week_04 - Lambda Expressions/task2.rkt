#lang racket

(define (applyN f n)
  (if (= n 1)
      (λ (x) (f x))
      (λ (x) ((applyN f (- n 1)) (f x)))
      )
  )

(equal? ((applyN (λ (x) (* 2 x)) 5) 2) 64)
(equal? ((applyN (λ (x) (quotient x 10)) 2) 100) 1)