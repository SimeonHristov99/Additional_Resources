#lang racket

(define (remove-first x xs)
  (cond
    [(empty? xs) xs]
    [(equal? x (car xs)) (cdr xs)]
    [else (cons (car xs) (remove-first x (cdr xs)))]
    )
  )

(equal? (remove-first 1 '(1 1 1 2)) '(1 1 2))
(equal? (remove-first 1 '(2 5 6)) '(2 5 6))
(equal? (remove-first 1 '(1)) '())
(equal? (remove-first 1 '(2 1)) '(2))