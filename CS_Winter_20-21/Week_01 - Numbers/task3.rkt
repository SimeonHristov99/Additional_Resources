#lang racket

(define (sum-squares x y)
  (+ (expt x 3) (expt y 3)))

(= (sum-squares -5 -13) 194)