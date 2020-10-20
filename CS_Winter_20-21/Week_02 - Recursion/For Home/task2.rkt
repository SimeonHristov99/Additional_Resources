#lang racket

(define (sum-divisors number current-div)
  (cond
    [(>= current-div number) 0]
    [(= (remainder number current-div) 0) (+ current-div (sum-divisors number (+ current-div 1)))]
    [else (sum-divisors number (+ current-div 1))]
   )
  )

(define (amicable? m n)
  (or
   (= (sum-divisors m 1) n)
   (= (sum-divisors n 1) m)
   )
  )

(equal? (amicable? 200 300) #f)
(equal? (amicable? 220 284) #t)
(equal? (amicable? 284 220) #t)
(equal? (amicable? 1184 1210) #t)
(equal? (amicable? 2620 2924) #t)
(equal? (amicable? 6232 6368) #t)