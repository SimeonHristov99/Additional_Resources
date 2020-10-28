#lang racket

(define (switch-sum f g n)
  (λ (x)
    (if (= n 1)
        (f x)
        (+ (f x) ((switch-sum g f (- n 1)) (f x)))
        )
    )
  )

(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 1) 2) 3)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 2) 2) 9)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 3) 2) 16)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 4) 2) 30)