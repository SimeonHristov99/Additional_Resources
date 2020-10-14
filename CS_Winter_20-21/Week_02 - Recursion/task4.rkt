#lang racket

(define (reverse-number n)
  (define (helper left-over result)
    (if (< left-over 10)
        (+ (* result 10) left-over)
        (helper (quotient left-over 10) (+ (* result 10) (remainder left-over 10)))
        )
    )
  (if (< n 0)
      (error "n was negative")
      (helper n 0)
      )
  )

(= (reverse-number 8) 8)
(= (reverse-number 123) 321)
(= (reverse-number 123456789) 987654321)