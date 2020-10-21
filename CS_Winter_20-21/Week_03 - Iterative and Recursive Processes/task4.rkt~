#lang racket

(define (sum-digits n)
  (if (< n 10)
      n
      (+ (remainder n 10) (sum-digits (quotient n 10)))
      )
  )

(define (sum-divisible-numbers a b k)
  (cond
    [(> a b) 0]
    [(= (remainder (sum-digits a) k) 0) (+ a (sum-divisible-numbers (+ a 1) b k))]
    [else (sum-divisible-numbers (+ a 1) b k)]
    )
  )

(= (sum-divisible-numbers 0 10 5) 5)
(= (sum-divisible-numbers 0 100 5) 990)