#lang racket

(require racket/trace)

(define (my-flatten xss)
  (cond
    [(null? xss) xss]
    [(list? (car xss)) (append (my-flatten (car xss)) (my-flatten (cdr xss)))]
    [else (cons (car xss) (my-flatten (cdr xss)))]
    )
  )

(trace my-flatten)

(my-flatten '((1 2 3) (4 5 6) ((7 8) (9 10 (11 (12))))))
(equal? (my-flatten '((1 2 3) (4 5 6) ((7 8) (9 10 (11 (12)))))) '(1 2 3 4 5 6 7 8 9 10 11 12))