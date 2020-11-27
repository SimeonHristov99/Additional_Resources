#lang racket
(require math/number-theory)

(define (numbers n)
     (define (number-of-prime-divisors x curr)
       (cond
         [(= curr x) 0]
         [(and (divides? curr x) (prime? curr)) (+ 1 (number-of-prime-divisors x (+ 1 curr)))]
         [else (number-of-prime-divisors x (+ 1 curr))]
         ))
  
 (if (< n 1)
      (error "n should be natural")
      (λ (k) (filter (λ (y) (> k (number-of-prime-divisors y 1))) (range 1 (+ n 1))))
   ))

(equal? ((numbers 10) 1) '(1 2 3 5 7))
(equal? ((numbers 20) 2) '(1 2 3 4 5 7 8 9 11 13 16 17 19))

(equal? ((numbers 101) 1) '(1 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101)) ;primes from 1 to 101 inc.
(equal? ((numbers 1) 1) '(1))
((numbers 0) 1);error