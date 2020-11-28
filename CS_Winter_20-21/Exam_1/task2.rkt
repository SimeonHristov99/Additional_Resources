#lang racket

(define (kth-max-min xs)
  (define (helper sorted-xs k)
    (cond
      [(< k 1) (error "k was not natural")]
      [(< (length sorted-xs) k) (error "No such number")]
      [else (list-ref sorted-xs (- k 1))]
      )
    )
  (λ (x) (helper (sort (remove-duplicates (filter negative? xs)) >) x))
  )

;((kth-max-min '(-1 0 -1 0 -2 3 1 -1)) 3)
(= ((kth-max-min '(-1)) 1) -1)
(= ((kth-max-min '(-1 -5 -6 -6 -6 -6)) 2) -5)
(= ((kth-max-min '(1 2 3 4 -5 6 7 -2 -1 0)) 2) -2)