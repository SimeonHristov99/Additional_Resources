#lang racket

(require racket/trace)

(define (replace xs dict)
  (cond
    [(null? xs) '()]
    [(null? (filter (λ (x) (= (car x) (car xs))) dict)) (cons (car xs) (replace (cdr xs) dict))]
    [else (cons (cdar (filter (λ (x) (= (car x) (car xs))) dict)) (replace (cdr xs) dict))]
    )
  )

(trace replace)
(replace '(1 2 3 4) '((1 . 11) (2 . 22)))
(equal? (replace '(1 2 3 4) '((1 . 11) (2 . 22))) '(11 22 3 4))