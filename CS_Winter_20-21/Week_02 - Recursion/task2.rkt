#lang racket

(define (fib i)
  (cond
    [(< i 0) (error "i was negative")]
    [(< i 2) i]
    [else (+ (fib (- i 1)) (fib (- i 2)))]
    )
  )

(define (fib-iter i)
  (define (helper previous current ci)
    (if (= ci i)
        current
        (helper current (+ current previous) (+ ci 1))
        )
    )
  (cond
    [(< i 0) (error "i was negative")]
    [(= i 0) 0]
    [else (helper 0 1 1)]
    )
  )

(= (fib 11) 89)
(= (fib-iter 11) 89)
(= (fib-iter 110) 43566776258854844738105)