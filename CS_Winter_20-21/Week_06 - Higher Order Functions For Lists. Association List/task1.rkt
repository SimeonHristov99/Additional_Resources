#lang racket

(define (insert-at x n xs)
  (append (take xs (- n 1)) (cons x (drop xs (- n 1))))
  )

(equal? (insert-at 0 1 '(10 20 30)) '(0 10 20 30))
(equal? (insert-at 0 2 '(10 20 30)) '(10 0 20 30))
(equal? (insert-at 0 3 '(10 20 30)) '(10 20 0 30))
(equal? (insert-at 0 4 '(10 20 30)) '(10 20 30 0))
(equal? (insert-at 0 1 '()) '(0))

(define (remove-all x xs)
  (filter (λ (i) (not (equal? i x))) xs)
  )

(equal? (remove-all 1 '(1 1 1 2)) '(2))
(equal? (remove-all 1 '(2 5 6)) '(2 5 6))
(equal? (remove-all 1 '(1)) '())
(equal? (remove-all 1 '(1 2 1 1)) '(2))