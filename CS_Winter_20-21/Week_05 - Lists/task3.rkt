#lang racket

(define (get-smallest xs)
  (define (helper min left-over)
    (cond
      [(empty? left-over) min]
      [(< (car left-over) min) (helper (car left-over) (cdr left-over))]
      [else (helper min (cdr left-over))]
      )
    )
  (if (empty? xs)
      (error "empty list")
      (helper (car xs) (cdr xs))
      )
  )

(= (get-smallest '(1 2 5)) 1)
(= (get-smallest '(2 1 5)) 1)
;(get-smallest '())