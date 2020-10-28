#lang racket

(define (compose f g)
  (λ (x) (f (g x)))
  )

(define (negate p)
  (λ (x) (not (p x)))
  )

(define (my-curry f x)
  (λ (y) ((curry f x) y))
  )

(= ((compose (λ (x) (- x 5)) (λ (x) (+ x 25))) 5) 25)
(= ((negate (λ (x) (even? x))) 2) #f)
(= ((my-curry (λ (x y) (+ (* 10 x) y)) 5) 10) 60)