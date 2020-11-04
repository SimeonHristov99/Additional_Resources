#lang racket

(define (remove-first x xs)
  (cond
    [(null? xs) xs] ; '()
    [(equal? (car xs) x) (cdr xs)]
    [else (cons (car xs) (remove-first x (cdr xs)))]
    )
  )

#|
3 -> 1 2 3 4 3 5 -> 1 2 4 3 5
> (cons 1 (remove-first 3 '(2 3 4 3 5)))
> (cons 1 (cons 2 (remove-first 3 '(3 4 3 5))))
> (cons 1 (cons 2 '(4 3 5))) => 1 2 4 3 5
|#

(equal? (remove-first 1 '(1 1 1 2)) '(1 1 2))
(equal? (remove-first 1 '(2 5 6)) '(2 5 6))
(equal? (remove-first 1 '(1)) '())
(equal? (remove-first 1 '(2 1)) '(2))