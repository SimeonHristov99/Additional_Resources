#lang racket

(require racket/trace)

(define (set-union xs ys)
  (define (helper left-over)
    (cond
      [(null? left-over) '()]
      [(list? (member (car left-over) (cdr left-over))) (helper (cdr left-over))]
      [else (cons (car left-over) (helper (cdr left-over)))]
      )
    )
(trace helper)
  (helper (sort (append xs ys) <))
  )

(equal? (set-union '(1 3 5 7) '(5 7 13)) '(1 3 5 7 13))
(equal? (set-union '(5 7 13) '(1 3 5 7)) '(1 3 5 7 13))