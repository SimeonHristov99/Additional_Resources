#lang racket

(define (zero-rows matrix)
  (cond
    [(null? matrix) '()]
    [(member 0 (car matrix)) (cons (map (λ (x) 0) (car matrix)) (zero-rows (cdr matrix)))] ; map (- x x)
    [else (cons (car matrix) (zero-rows (cdr matrix)))]
    )
  )

(define (transpose matrix)
  (if (null? (car matrix))
      '()
      (cons (map (λ (x) (car x)) matrix) (transpose (map (λ (x) (cdr x)) matrix)))
      )
  )

(define (zero-cols matrix)
  (transpose (zero-rows (transpose matrix)))
  )

(equal? (zero-cols '((1 2 0) (3 4 1) (0 5 7) (4 2 4))) '((0 2 0) (0 4 0) (0 5 0) (0 2 0)))

#| Algorithm:

Is there an element?
  no -> '()
  yes -> map a function that takes the first element -> '(1 3 0 4) -> xs
         map a function that removes the first element -> ys
         cons xs ys

|#

#|
(1 2 0)
(3 4 1)
(0 5 7)
(4 2 4)

(1 3 0 4)
(2 4 5 2)
(0 1 7 4)

(0 0 0 0)
(2 4 5 2)
(0 0 0 0)
|#