#lang racket

(define (elem? x xs)
  (cond
    [(empty? xs) #f]
    [(equal? (car xs) x) #t]
    [else (elem? x (cdr xs))]
    )
  )

(equal? (elem? 1 '(5 2 1)) #t)
(equal? (elem? "str" '()) #f)
(equal? (elem? "str" '("str" "len" "pair")) #t)

(member 1 '(5 2 1))
(member "str" '())
(member "str" '("str" "len" "pair"))