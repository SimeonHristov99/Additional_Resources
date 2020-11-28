#lang racket

(define (triangular? matrix)
  (define (helper left-over-matrix i)
    (cond
      [(null? left-over-matrix) #t]
      [(< (length (filter zero? (take (car left-over-matrix) i))) i) #f]
      [else (helper (cdr left-over-matrix) (+ i 1))]
      )
    )
  (helper matrix 0)
  )

(equal? (triangular? '((-1))) #t)
(equal? (triangular? '((-1 -2 -3) (0 -5 -6) (0 0 -9))) #t)
(equal? (triangular? '((1 2 3) (0 5 6) (0 0 9))) #t)
(equal? (triangular? '((0 2 3) (0 0 6) (1 0 0))) #f)
(equal? (triangular? '((1 2 3) (1 5 6) (0 0 9))) #f)
(equal? (triangular? '((1 2 3 4) (0 5 6 7) (0 0 8 9) (0 0 0 9))) #t)