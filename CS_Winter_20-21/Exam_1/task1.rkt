#lang racket

(require math/number-theory)

(define (to-list n)
  (if (< n 10)
      (list n)
      (cons (remainder n 10) (to-list (quotient n 10)))
      )
  )

(define (dig-pow n p)
  (define (helper reversed-xs p2)
    (if (null? reversed-xs)
        '()
        (cons (expt (car reversed-xs) p2) (helper (cdr reversed-xs) (+ p2 1)))
        )
    )
  (define result (apply + (helper (reverse (to-list n)) p)))
  (cond
    [(< n 1) (error "n was not natural")]
    [(divides? n result) (quotient result n)]
    [else -1]
    )
  )

(= (dig-pow 89 1) 1)
(= (dig-pow 92 1) -1)
(= (dig-pow 695 2) 2)
(= (dig-pow 46288 3) 51)