#lang racket

(define (derive f eps)
  (λ (x) (/ (- (f (+ x eps)) (f x)) eps))
  )

(define (deriveN f n eps)
  (if (= n 0)
      f
      (deriveN (derive f eps) (- n 1) eps))
  )

(= ((deriveN (λ (x) (* 2 x x x)) 3 1e-3) 2) 12.000015203739167)