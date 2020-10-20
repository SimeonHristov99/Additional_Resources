#lang racket

(define (prime? number)
  (define (helper current-number)
    (cond
      [(>= current-number number) #t]
      [(= (remainder number current-number) 0) #f]
      [else (helper (+ current-number 1))]
      )
    )
  (if (< number 2)
      #f
      (helper 2)
      )
  )

(define (sum-special-primes n d)
  (define (contains-d? number)
    (if (< number 10)
        (= number d)
        (or
         (= (remainder number 10) d)
         (contains-d? (quotient number 10)))
         )
        )
  (define (helper primes-found result current-number)
    (cond
      [(>= primes-found n) result]
      [(and
        (prime? current-number)
        (contains-d? current-number)
        ) (helper (+ primes-found 1) (+ current-number result) (+ current-number 1))]
      [else (helper primes-found result (+ current-number 1))]
      )
    )
  (helper 0 0 2)
  )

(= (sum-special-primes 5 2) 392)
(= (sum-special-primes 5 3) 107)
(= (sum-special-primes 10 3) 462)
(= (sum-special-primes 2 9) 48)