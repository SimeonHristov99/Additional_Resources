#lang racket

(define (shuffle xs)
  (define (helper left-over n)
    (if (<= (length left-over) n)
        '()
        (append (list (car left-over) (car (drop left-over n))) (helper (cdr left-over) n))
        )
    )
  (if (< (length xs) 2)
      xs
      (helper xs (quotient (length xs) 2))
      )
  )

(equal? (shuffle '(1)) '(1))
(equal? (shuffle '(1 2)) '(1 2))
(equal? (shuffle '(2 5 1 3 4 7)) '(2 3 5 4 1 7))
(equal? (shuffle '(1 2 3 4 4 3 2 1)) '(1 4 2 3 3 2 4 1))
(equal? (shuffle '(1 1 2 2)) '(1 2 1 2))