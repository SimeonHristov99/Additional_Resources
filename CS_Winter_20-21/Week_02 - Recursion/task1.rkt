#lang racket

(require racket/trace)

(define (fact n)
  (cond
    [(< n 0) (error "n was negative")]
    [(< n 3) n]
    [else (* n (fact (- n 1)))]
    )
  )

(trace fact)

(define (fact-iter n)
  (define (helper n result)
    (if (< n 2)
        result
        (helper (- n 1) (* result n)))
    )
  (trace helper)
  (if (< n 0)
    (error "n was negative")
    (helper n 1)
    )
  )

(= (fact 11) 39916800)
(= (fact-iter 11) 39916800)