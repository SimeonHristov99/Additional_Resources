#lang racket

(require racket/trace)

(define (concat xs ys)
  (define (helper add-to get-from)
    (if (null? get-from)
        (reverse add-to)
        (helper (cons (car get-from) add-to) (cdr get-from))
        )
    )
  (trace helper)
  (helper (reverse xs) ys)
  )

#|
helper '(3 2 1) '(4 5 6)
> helper '(4 3 2 1) '(5 6)
> helper '(5 4 3 2 1) '(6)
> helper '(6 5 4 3 2 1) '()
> '(1 2 3 4 5 6)
|#

(equal? (concat '(1 2 3) '(4 5 6)) '(1 2 3 4 5 6))