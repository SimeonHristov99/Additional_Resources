#lang racket

(define (longest-ascending-sub xs)
  (define (helper current xs max)
    (cond
      [(empty? xs) (if (> (length current) (length max))
                (reverse current)
                (reverse max)
                )]
      [(<= (car current) (car xs)) (helper (cons (car xs) current) (cdr xs) max)]
      [else (if (> (length current) (length max))
                (helper (list (car xs)) (cdr xs) current)
                (helper (list (car xs)) (cdr xs) max)
                )]
      )
    )
  (if (< (length xs) 2)
      xs
      (helper (list (car xs)) (cdr xs) '())
    )
  )

(equal? (longest-ascending-sub '(1 0 5)) '(0 5))
(equal? (longest-ascending-sub '(1 5 2 3 1 5 6 7 7 1 5)) '(1 5 6 7 7))
(equal? (longest-ascending-sub '(1 5 2 3 1 5 2 7 7 15)) '(2 7 7 15))
(equal? (longest-ascending-sub '(1 5 2 3 4 5 6 7 7 1 5)) '(2 3 4 5 6 7 7))
(equal? (longest-ascending-sub '(1 5 2 4 6 8 3 4 1)) '(2 4 6 8))