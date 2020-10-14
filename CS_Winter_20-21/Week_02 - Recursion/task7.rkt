#lang racket

(require racket/trace)

(define (inc-digits? n)
  (cond
    [(< n 0) (error "n was negative")]
    [(< n 10) #t]
    [else (and
           (>= (remainder n 10) (remainder (quotient n 10) 10))
           (inc-digits? (quotient n 10))
           )]
    )
  )

(trace inc-digits?)

(equal? (inc-digits? 1244) #t)
(equal? (inc-digits? 12443) #f)