#lang racket

(define (decr-digits n)
  (cond
    [(< n 0) (error "n was negative")]
    [(< n 10) #t]
    [else (and
           (<= (remainder n 10) (remainder (quotient n 10) 10))
           (decr-digits (quotient n 10))
           )]
    )
  )

(define (sum-numbers a b)
  (cond
    [(> a b) 0]
    [(decr-digits a) (+ a (sum-numbers (+ a 1) b))]
    [else (sum-numbers (+ a 1) b)]
    )
  )

(= (sum-numbers 1 9) 45)
(= (sum-numbers 199 203) 200)
(= (sum-numbers 219 225) 663)