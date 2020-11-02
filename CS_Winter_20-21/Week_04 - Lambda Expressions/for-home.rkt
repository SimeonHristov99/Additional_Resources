#lang racket

(define (repeater str)
  (λ (count glue) (cond
                    [(< count 0) (error "count was negative")]
                    [(= count 0) ""]
                    [(= count 1) str]
                    [else (string-append str glue ((repeater str) (- count 1) glue))]
                    ))
  )

(equal? ((repeater "I love Racket") 3 " ") "I love Racket I love Racket I love Racket")
(equal? ((repeater "Quack") 5 "!") "Quack!Quack!Quack!Quack!Quack")