#lang racket

(define (best-metric? ms xss)
  (define (helper results-xss)
      (ormap (λ (current-result)
               (andmap (λ (other) (andmap > current-result other)) (cdr results-xss)))
               results-xss
         )
    )
  (helper (map (λ (m) (map m xss)) ms))
  )

(define (prod xs) (apply * xs))
(define (sum xs) (apply + xs))
(equal? (best-metric? (list sum prod) `((1337 0) (3 -4 5) (0 1 2))) #t)
(equal? (best-metric? (list car sum) `((100 -100) (29 1) (42))) #f)

; ((λ (xs ys) (map (λ (x) (ormap (λ (y) (> y x)) ys)) xs)) '(3 4 1337) '(0 -60 0)) => '(#f #f #f)

#| Algorithm:
Get a list of lists with the results from applying each metric to each element in xss.
(list sum prod) `((0 1 2) (3 -4 5) (1337 0)) => '((3 4 1337) (0 -60 0))
(list car sum) `((100 -100) (29 1) (42)) => '((100 29 42) (0 30 42))

flag = false

for current-result && !flag in results-xss:
  for other && !flag in (cdr results-xss):
    if every element in current-result > every element in other:
      flag = true

return flag
|#