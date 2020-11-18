#lang racket

(define (num-bigger-elements xs)
  (define (helper left-over)
    (define (bigger-than ys y)
      (filter (λ (x) (> x y)) ys)
      )
      (if (null? left-over)
      '()
      (cons (list (car left-over) (length (bigger-than xs (car left-over))))
            (helper (cdr left-over))
            ) 
     ))
  (helper xs)
  )

(equal? (num-bigger-elements '(5 6 3 4)) '((5 1) (6 0) (3 3) (4 2)))
(equal? (num-bigger-elements '(1 1 1)) '((1 0) (1 0) (1 0)))