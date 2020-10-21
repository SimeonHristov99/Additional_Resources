#lang racket

; Task 1
(define (calc-series-sum x n)
  (define (helper current-sum next-nom next-denom next-denom-mult next-x current-pow)
    (if (> current-pow n)
        current-sum
        (helper
         (+ current-sum (* (/ next-nom next-denom) next-x))
         (* next-nom -2)
         (* next-denom (+ next-denom-mult 2))
         (+ next-denom-mult 2)
         (* next-x x)
         (+ current-pow 1)
         )
     )
    )
  (helper -2 4 3 3 x 1)
  )

(calc-series-sum 1 0) ; -2
(calc-series-sum 1 1) ; -2/3
(calc-series-sum 1 2) ; -1 1/5
(calc-series-sum 1 3) ; -1 1/21
(calc-series-sum 1 4) ; -1 11/135
(calc-series-sum 1 5) ; -1 29/385
(calc-series-sum 1 6) ; -1 937/12285