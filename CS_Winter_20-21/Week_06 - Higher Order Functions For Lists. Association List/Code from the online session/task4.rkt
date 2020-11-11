#lang racket

(define (get-sublist si ei xs)
  (drop (take xs (+ ei 1)) si)
  )

(get-sublist 2 6 '(1 2 2 3 1 5 6 7 7))
(equal? (get-sublist 2 6 '(1 2 2 3 1 5 6 7 7)) '(2 3 1 5 6))