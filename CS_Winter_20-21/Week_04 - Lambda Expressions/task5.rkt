#lang racket

(define (derive f eps)
  (λ (x) (/ (- (f (+ x eps)) (f x)) eps))
  )

(= ((derive (λ (x) (* 2 x x x)) 1e-3) 2) 24.0120019999992)
(= ((derive (λ (x) (* 2 x x x)) 1e-6) 2) 24.000012004421478)