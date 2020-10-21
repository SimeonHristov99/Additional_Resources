#lang racket

(define (calculate-sum x n)
  (define (helper result current-power)
    (if (> current-power n)
        result
        (helper (+ result (expt x current-power)) (+ current-power 1))
        )
    )
  (helper 0 0)
  )

(= (calculate-sum 5 0) 1)
(= (calculate-sum 5 1) 6)
(= (calculate-sum 10 1) 11)
(= (calculate-sum 1 11) 12)
(= (calculate-sum 2 11) 4095)