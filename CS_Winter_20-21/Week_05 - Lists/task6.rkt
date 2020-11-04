#lang racket

(define (insert-at x i xs)
  (cond
    [(or (< i 0) (> i (length xs))) (error "i was invalid")]
    [(= i 0) (cons x xs)]
    [else (cons (car xs) (insert-at x (- i 1) (cdr xs)))]
    )
  )

(equal? (insert-at 1 0 '()) '(1))
(equal? (insert-at 1 0 '(2)) '(1 2))
(equal? (insert-at 10 1 '(1 2 3)) '(1 10 2 3))
;(insert-at 1 1 '())