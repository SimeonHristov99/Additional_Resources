#lang racket

; subtask 1
(sort '("banana" "apple" "str" "fruit") (λ (x y) (< (string-length x) (string-length y))))

; subtask 2
(define (my-length xs)
  (if (empty? xs)
      0
      (+ 1 (my-length (cdr xs)))
      )
  )

(= (my-length '()) 0)
(= (my-length '(1 2 5 6 4 8)) 6)
(= (my-length '(1 2 5 6 4 8)) (length '(1 2 5 6 4 8)))