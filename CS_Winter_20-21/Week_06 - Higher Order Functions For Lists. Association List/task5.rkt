#lang racket

(define (count-occurrences subxs xs)
  (cond
    [(> (length subxs) (length xs)) 0]
    [(equal? (take xs (length subxs)) subxs) (+ 1 (count-occurrences subxs (cdr xs)))]
    [else (count-occurrences subxs (cdr xs))]
      )
  )

(equal? (count-occurrences '(1 5) '(1 5 2 3 1 5 6 7 7 1 5)) 3)
(equal? (count-occurrences '(1 5) '(15 2 3 15 6 7 7 15)) 0)