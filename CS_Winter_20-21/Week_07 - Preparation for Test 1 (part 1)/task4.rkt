#lang racket

(define (graph-contains-points xss f)
  (cond
    [(null? xss) #t]
    [(= (f (caar xss)) (cdar xss)) (graph-contains-points (cdr xss) f)]
    [else #f]
    )
  )

(equal? (graph-contains-points '((1 . 2) (2 . 3) (3 . 4)) (λ (x) (+ x 1))) #t)
(equal? (graph-contains-points '((1 . 2) (2 . 4) (3 . 4)) (λ (x) (+ x 1))) #f)