#lang racket

(require racket/trace)

(define (deep-delete xs)
  (define (helper number-of-car left-over)
    (cond
      [(null? left-over) '()]
      [(list? (car left-over)) (cons
                                (helper (+ number-of-car 1) (car left-over))
                                (helper number-of-car (cdr left-over))
                                )]
      [(>= (car left-over) number-of-car) (cons
         (car left-over)
         (helper number-of-car (cdr left-over))
         )]
      [else (helper number-of-car (cdr left-over))]
        )
    )
  (helper 1 xs)
  )

(equal? (deep-delete '(1 (2 (2 4) 1) 0 (3 (1)))) '(1 (2 (4)) (3 ())))

#| Algorithm:
Counting car in a variable of a helper function.

Is there an element?
  no -> return '()
  first element is list -> recursive call with (car first element) (+ 1 car) and then with the leftover
  first element is a number: first element >= number of car -> add first element to the resulting list
  else (first element < number of car) -> skip first element
|#