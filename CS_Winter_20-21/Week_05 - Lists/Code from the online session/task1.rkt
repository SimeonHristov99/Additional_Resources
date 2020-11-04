#lang racket

; subtask 1
(sort '("banana" "apple" "fruit" "str") (λ (x y) (< (string-length x) (string-length y))))

; subtask 2
(define (my-length xs)
  (if (null? xs)
      0
      (+ 1 (my-length (cdr xs)))
      )
  )

(define (my-length-2 xs)
  (define (helper result left-over)
    (if (empty? left-over)
        result
        (helper (+ result 1) (cdr left-over))
        )
    )
  (helper 0 xs)
  )

(= (my-length '()) 0)
(= (my-length '(1 2 5 6 4 8)) 6)

(= (my-length-2 '()) 0)
(= (my-length-2 '(1 2 5 6 4 8)) 6)