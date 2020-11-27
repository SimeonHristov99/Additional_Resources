#lang racket

(define (have-matching-lengths xss yss)
      (cond
        [(not (= (length xss) (length yss))) #f]
        [(and (null? xss) (null? yss)) #t] 
        [(= (length (car xss)) (length (car yss))) (have-matching-lengths (cdr xss) (cdr yss))]
        [else #f]
        )
  )

(equal? (have-matching-lengths '((1 2 3) (4 5 6) (7 8 9)) '((1 4 7) (2 5 8) (3 6 9))) #t)
(equal? (have-matching-lengths '((1 2)) '((1 4 7) (2 5 8))) #f)
;more cases 
(equal? (have-matching-lengths '((1) (2 3) (4 5 6)) '((2) (4 8) (1 2 3))) #t)
(equal? (have-matching-lengths '((4 1 2 3)) '((1 4 3 7) (2 5 8))) #f)
(equal? (have-matching-lengths '((1 2 3 4 5 6 7 2) (1)) '((12 2 45 6 78 6 7 4) (5))) #t)
(equal? (have-matching-lengths '((1) (234234)) '((2) (2) (3) (123423423))) #f)