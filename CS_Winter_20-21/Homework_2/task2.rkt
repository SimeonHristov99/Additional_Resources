#lang racket

(require math/number-theory)

(define (factorize n)
  (define (helper left-over i)
    (cond
      [(< left-over 2) '()]
      [(and (prime? i) (divides? i left-over)) (cons i (helper (quotient left-over i) 2))]
      [else (helper left-over (+ i 1))]
      )
    )
  (if (< n 2)
      (error "n has to be greater than 2")
      (helper n 2)
      )
  )

(equal? (factorize 2) '(2))
(equal? (factorize 6) '(2 3))
(equal? (factorize 13) '(13))
(equal? (factorize 123) '(3 41))
(equal? (factorize 152) '(2 2 2 19))
(equal? (factorize 12356498) '(2 7 11 19 41 103))
;(factorize 1)
;(factorize -1)