#lang racket

(define (reverse-number n)
  (define (helper left-over result)
    (if (< left-over 10)
        (+ (* result 10) left-over)
        (helper (quotient left-over 10) (+ (* result 10) (remainder left-over 10)))
        )
    )
  (helper n 0)
  )

(define (palindrome? n)
  (if (< n 0)
      (error "n was negative")
      (= n (reverse-number n))
      )
  )

(equal? (palindrome? 6) #t)
(equal? (palindrome? 1010) #f)
(equal? (palindrome? 505) #t)
(equal? (palindrome? 123321) #t)
(equal? (palindrome? 654) #f)