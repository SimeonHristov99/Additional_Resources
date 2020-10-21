#lang racket

(define (p n)
  (define (helper result to-add left-over)
    (cond
      [(= left-over 1) result]
      [else (helper (+ result to-add) (+ to-add 3) (- left-over 1))]
      )
    )
  (if (< n 1)
      (error "n was not natural")
      (helper 1 4 n)
      )
  )

(= (p 1) 1)
(= (p 2) 5)
(= (p 3) 12)
(= (p 4) 22)
(= (p 5) 35)
(= (p 6) 51)