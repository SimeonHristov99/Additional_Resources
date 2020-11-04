#lang racket

(define (insert-at x i xs)
  (cond
    [(not (and (>= i 0) (<= i (length xs)))) (error "i was invalid")]
    [(= i 0) (cons x xs)]
    [else (cons (car xs) (insert-at x (- i 1) (cdr xs)))]
    )
  )

#|
            0 1 2
x=10 i=1 xs=1 2 3
(cons 1 (insert-at 10 0 '(2 3)))
(cons 1 (cons 10 '(2 3)))
(cons 1 '(10 2 3))
> '(1 10 2 3)
|#

(equal? (insert-at 1 0 '()) '(1))
(equal? (insert-at 1 0 '(2)) '(1 2))
(equal? (insert-at 10 1 '(1 2 3)) '(1 10 2 3))