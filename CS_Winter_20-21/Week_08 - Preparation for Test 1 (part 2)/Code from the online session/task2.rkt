#lang racket

(define (best-metric? ms xss)
  (define (helper result-xss)
    (ormap (λ (current-result)
             (andmap (λ (other) (andmap > current-result other)) (cdr result-xss))
             ) result-xss)
    )
  (helper (map (λ (m) (map m xss)) ms))
  )

(define (prod xs) (apply * xs))
(define (sum xs) (apply + xs))
(equal? (best-metric? (list sum prod) `((1337 0) (3 -4 5) (0 1 2))) #t)
(equal? (best-metric? (list car sum) `((100 -100) (29 1) (42))) #f)

#| Algorithm:
Get list holding the results from applying every m over every xs

|#