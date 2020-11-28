#lang racket

(define (shuffle xs n)
  (if (<= (length xs) n)
      '()
      (append (list (car xs) (car (drop xs n))) (shuffle (cdr xs) n))
      )
  )

(equal? (shuffle '(2 5 1 3 4 7) 3) '(2 3 5 4 1 7))
(equal? (shuffle '(1 2 3 4 4 3 2 1) 4) '(1 4 2 3 3 2 4 1))
(equal? (shuffle '(1 1 2 2) 2) '(1 2 1 2))