#lang racket

(define (sum-divisors current-divisor n)
    (cond
      [(>= current-divisor n) 0]
      [(= (remainder n current-divisor) 0) (+ current-divisor (sum-divisors (+ current-divisor 1) n))]
      [else (sum-divisors (+ current-divisor 1) n)]
     )
    )

(define (perfect? n)
  (if
   (< n 1) (error "n was not natural")
   (= n (sum-divisors 1 n))
   )
  )

(equal? (perfect? 6) #t)
(equal? (perfect? 33550336) #t)
(equal? (perfect? 495) #f)
(equal? (perfect? 1) #f)