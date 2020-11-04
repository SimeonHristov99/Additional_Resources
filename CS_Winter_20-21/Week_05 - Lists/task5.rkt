#lang racket

(define (my-reverse xs)
  (define (helper result left-over)
    (if (empty? left-over)
        result
        (helper (cons (car left-over) result) (cdr left-over))
        )
    )
  (helper '() xs)
  )

(equal? (my-reverse '(1 2 3 4 5)) '(5 4 3 2 1))