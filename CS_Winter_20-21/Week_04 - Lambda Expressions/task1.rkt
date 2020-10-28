#lang racket

((λ (x) x) "Hello")
((λ (x) (* 2 x)) 0.5)
((λ (g a b) (- (g b) (g a))) (λ (x) (* x 2)) 5.2 4.5)