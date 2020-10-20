#lang racket

(define (reverse-number result n)
  (cond
    [(< n 10) (+ (* result 10) n)]
    [else (reverse-number (+ (* result 10) (remainder n 10)) (quotient n 10))])
  )

(define (palindrome? n)
  (if (< n 0)
      (error "n was negative")
      (= n (reverse-number 0 n))
      )
  )

(define (num-palindromes a b)
  (cond
    [(> a b) (num-palindromes b a)]
    [(= a b) (if (palindrome? a) 1 0)]
    [(palindrome? a) (+ 1 (num-palindromes (+ a 1) b))]
    [else (num-palindromes (+ a 1) b)]
    )
  )

(= (num-palindromes 1 101) 19)
(= (num-palindromes 1 100) 18)
(= (num-palindromes 100 1) 18)
(= (num-palindromes 100 2000) 100)