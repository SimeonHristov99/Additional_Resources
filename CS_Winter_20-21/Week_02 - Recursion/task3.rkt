#lang racket

(define (prime? n)
  (define (helper i)
    (cond
      [(= i n) #t]
      [(= (remainder n i) 0) #f]
      [else (helper (+ i 1))]))
  (if (< n 2)
      #f
      (helper 2))
  )

(equal? (prime? 6) #f)
(equal? (prime? 1) #f)
(equal? (prime? 2) #t)
(equal? (prime? 3) #t)
(equal? (prime? 61) #t)