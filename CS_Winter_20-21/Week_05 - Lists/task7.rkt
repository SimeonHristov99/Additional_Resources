#lang racket

(define (concat xs ys)
  (define (helper add-to get-from)
    (if (empty? get-from)
        (reverse add-to)
        (helper (cons (car get-from) add-to) (cdr get-from))
        )
    )
  (helper (reverse xs) ys)
  )

(equal? (concat '(1 2 3) '(4 5 6)) '(1 2 3 4 5 6))

(append '(1 2 3) '(4 5 6) '(7 8 9) '(10 11 12) '(13))