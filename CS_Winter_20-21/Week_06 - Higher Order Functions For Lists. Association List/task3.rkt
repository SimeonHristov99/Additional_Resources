#lang racket

(define (replace xs dict)
  (cond
    [(null? xs) xs]
    [(null? (filter (λ (x) (equal? (car xs) (car x))) dict)) (cons (car xs) (replace (cdr xs) dict))]
    [else (cons (cdar (filter (λ (x) (equal? (car xs) (car x))) dict)) (replace (cdr xs) dict))]
  )
  )

; (cdar (filter (λ (x) (equal? (car xs) (car x))) dict)) === (cdr (car (filter (λ (x) (equal? (car xs) (car x))) dict)))

(equal? (replace '(1 2 3 4) '((1 . 11) (2 . 22))) '(11 22 3 4))