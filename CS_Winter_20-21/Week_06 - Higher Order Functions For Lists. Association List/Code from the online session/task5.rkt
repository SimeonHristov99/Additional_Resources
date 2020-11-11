#lang racket

(define (count-occurrences subxs xs)
  (cond
    [(> (length subxs) (length xs)) 0]
    [(equal? (take xs (length subxs)) subxs) (+ 1 (count-occurrences subxs (drop xs (length subxs))))]
    [else (count-occurrences subxs (cdr xs))]
    )
  )

(= (count-occurrences '(1 5) '(1 5 2 3 1 5 6 7 7 1 5)) 3)