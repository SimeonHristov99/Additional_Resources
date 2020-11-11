#lang racket

(define (remove-all x xs)
  (cond
    [(empty? xs) xs]
    [(equal? x (car xs)) (remove-all x (cdr xs))]
    [else (cons (car xs) (remove-all x (cdr xs)))]
    )
  )

(equal? (remove-all 1 '(1 1 1 2)) '(2))
(equal? (remove-all 1 '(2 5 6)) '(2 5 6))
(equal? (remove-all 1 '(1)) '())
(equal? (remove-all 1 '(1 2 1 1)) '(2))