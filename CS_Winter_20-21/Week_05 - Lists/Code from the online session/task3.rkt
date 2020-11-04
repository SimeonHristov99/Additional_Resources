#lang racket

#|
(define (get-smallest xs)
  (car (sort xs <))
  )
|#

(define (get-smallest xs)
  (define (helper current-min left-over)
    (cond
      [(null? left-over) current-min]
      [(< (car left-over) current-min) (helper (car left-over) (cdr left-over))]
      [else (helper current-min (cdr left-over))]
        )
    )
  (if (null? xs)
       (error "the list was empty")
       (helper (car xs) (cdr xs))
      )
  )

(= (get-smallest '(1 2 5)) 1)
(= (get-smallest '(2 1 5)) 1)