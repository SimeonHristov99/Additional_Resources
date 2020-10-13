#lang racket
;Homework
(define (my-gcd x y ) (cond
         [(= x 0) y]
         [(= y 0) x]
         [(> x y) (gcd y (- x y))]
         [(< x y) (gcd x (- y x))]
         [else x]))

(display "\nTest cases for GCD\n")
(= (my-gcd 13 13) 13)
(= (my-gcd 624129 2061517) 18913)
(= (my-gcd 37 600) 1)
(= (my-gcd 20 100) 20)
(= (my-gcd 5 13) 1)
(= (my-gcd 13 1235) 13)

