#lang racket

(define (has-decr-digits? x)
  (if (< x 10)
      #t
      (and (>= (remainder (quotient x 10) 10) (remainder x 10)) ; 2 >= 2
           (has-decr-digits? (quotient x 10))
           )
      )
  )

(define (has-decr-digits2? x)
  (cond
    [(< x 10) #t]
    [(>= (remainder (quotient x 10) 10) (remainder x 10)) (has-decr-digits? (quotient x 10))]
    [else #f]
    )
  )

(define (sum-numbers a b)
  (if (> a b)
      (sum-numbers b a)
      (apply + (filter has-decr-digits? (range a (+ b 1))))
      )
  )

(equal? (sum-numbers 9 1) 45)
(equal? (sum-numbers 1 9) 45)
(equal? (sum-numbers 199 203) 200)
(equal? (sum-numbers 219 225) 663)