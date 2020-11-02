#lang racket

(require math/number-theory)

(define (cuban? x)
  (define (helper next current)
    (cond
      [(< (- (* next next next) (* current current current)) x) (helper (+ next 1) next)]
      [(= (- (* next next next) (* current current current)) x) #t]
      [else #f]
     )
    )
  (helper 2 1)
  )

(define (nth-cuban n)
  (define (helper cubans-found current-number)
    (cond
      [(= cubans-found n) (- current-number 1)]
      [(and (cuban? current-number) (prime? current-number)) (helper (+ cubans-found 1) (+ current-number 1))]
      [else (helper cubans-found (+ current-number 1))]
      )
    )
  (if (< n 1)
      (error "n was not natural")
      (helper 0 0)
      )
  )

(= (nth-cuban 1) 7)
(= (nth-cuban 4) 61)
(= (nth-cuban 50) 55897)
(= (nth-cuban 100) 283669)