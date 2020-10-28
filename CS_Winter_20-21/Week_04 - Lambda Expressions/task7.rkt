#lang racket

(define (derive-x f eps)
  (λ (x y) (/ (- (f (+ x eps) y) (f x y)) eps))
  )

(define (derive-y f eps)
  (λ (x y) (/ (- (f x (+ y eps)) (f x y)) eps)))

(define (g x y) (+ (* x x x) (* x y) (* y y)))
(= ((derive-x g 0.0001) 2 3) 15.000600010033338)
(= ((derive-y g 0.0001) 2 3) 8.00009999998963)