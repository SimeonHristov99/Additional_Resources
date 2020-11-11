#lang racket

(define (ordered? xs pred)
  (cond
    [(< (length xs) 2) #t]
    [(pred (car xs) (cadr xs)) (ordered? (cdr xs) pred)]
    [else #f]
      )
  )

(equal? (ordered? '(1 2 3 5) (λ (x y) (< x y))) #t)