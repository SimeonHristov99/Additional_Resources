#lang racket

(define (zero-rows matrix)
  (cond
    [(null? matrix) '()]
    [(member 0 (car matrix)) (cons (map (λ (x) 0) (car matrix)) (zero-rows (cdr matrix)))]
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

(equal? (zero-rows '((1 2 0) (3 4 1) (0 5 7) (4 2 4))) '((0 0 0) (3 4 1) (0 0 0) (4 2 4)))
(equal? (zero-cols '((1 2 0) (3 4 1) (0 5 7) (4 2 4))) '((0 2 0) (0 4 0) (0 5 0) (0 2 0)))

#| Algorithm:
Transpose -> zero-rows -> transpose

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

(0 2 0)
(0 4 0)
(0 5 0)
(0 2 0)

|#

#| Algorithm (transpose):
Is there an element?
  no -> return '()
  yes -> map a function that takes only the first element of the list: (1 2 0) (3 4 1) (0 5 7) (4 2 4) -> (1 3 0 4)
         form a list of the cdr elements: (1 2 0) (3 4 1) (0 5 7) (4 2 4) -> (2 0) (4 1) (5 7) (2 4)
         add the first list to a recursive call with parameter the second list
|#