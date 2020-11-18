#lang racket

(define (zero-rows matrix)
  (cond
    [(null? matrix) '()]
    [(member 0 (car matrix)) (cons (map (λ (x) 0) (car matrix)) (zero-rows (cdr matrix)))] ; map (- x x)
    [else (cons (car matrix) (zero-rows (cdr matrix)))]
    )
  )

(equal? (zero-rows '((1 2 0) (3 4 1) (0 5 7) (4 2 4))) '((0 0 0) (3 4 1) (0 0 0) (4 2 4)))
;(equal? (zero-cols '((1 2 0) (3 4 1) (0 5 7) (4 2 4)) '((0 2 0) (0 4 0) (0 5 0) (0 2 0))))

#|
- What is the name of the procedure?
- How many arguments does it take? Label them.
- What is the domain of the attributes?
- What is the simplest case?
- What is an extreme case?
- What case would return an error?
- Can we write down the steps to solve it?



(1 2 0)
(3 4 1)
(0 5 7)
(4 2 4)

Result:
(0 0 0)
(3 4 1)
(0 0 0)
(4 2 4)
|#