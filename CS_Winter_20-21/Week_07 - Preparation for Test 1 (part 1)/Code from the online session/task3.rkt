#lang racket

(define (deep-delete xs)
  (define (helper times-car left-over)
    (cond
      [(null? left-over) '()]
      [(list? (car left-over)) (cons
                                (helper (+ times-car 1) (car left-over))
                                (helper times-car (cdr left-over)))]
      [(>= (car left-over) times-car) (cons (car left-over) (helper times-car (cdr left-over)))]
      [else (helper times-car (cdr left-over))]
      )
    )
  (helper 1 xs)
  )

(equal? (deep-delete '(1 (2 (2 4) 1) 0 (3 (1)))) '(1 (2 (4)) (3 ())))

#|
- What is the name of the procedure?
- How many arguments does it take? Label them.
- What is the domain of the attributes?
- What is the simplest case?
- What is an extreme case?
- What case would return an error? no
- Can we write down the steps to solve it?

'(1 (2 (2 4) 1) 0 (3 (1)))
car '(1 (2 (2 4) 1) 0 (3 (1))) -> depth(1, 0) = 1
depth(2) = 2

Count car in a helper procedure. Count starts from 1.

Is there an element?
  no -> return '()
  first element is list -> cons (recursive call with (car + 1) (car left)) (helper car cdr left-over)
  first element is number -> fe >= number of car -> cons fe helper cdr left-over
                             fe < number of car -> skip
|#