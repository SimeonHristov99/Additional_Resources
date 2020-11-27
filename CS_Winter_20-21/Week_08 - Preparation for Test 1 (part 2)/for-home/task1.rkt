#lang racket

(define (diagonal xss)
  (define (helper left-over i)
    (if (null? left-over)
        '()
        (cons (list-ref (car left-over) i) (helper (cdr left-over) (+ i 1)))
        )
    )
  (helper xss 0)
  )

(equal? (diagonal '((1 2 3 4) (5 6 7 8) (9 10 11 12) (13 14 15 16))) '(1 6 11 16))