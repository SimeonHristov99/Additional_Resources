#lang racket

(require math/number-theory)

(define (sum-digit-divisors x)
  (define (helper left-over)
    (cond
      [(< left-over 10) (if (divides? left-over x)
                            left-over
                            0
                            )]
      [else (if (and (not (zero? (remainder left-over 10)))
                     (divides? (remainder left-over 10) x))
                (+ (remainder left-over 10) (helper (quotient left-over 10)))
                (helper (quotient left-over 10))
                )]
      )
    )
  (if (< x 1)
      (error "Not a natural number")
      (helper x)
      )
)

(define (same-sum a b)
  (define (helper xs)
    (cond
      [(< (length xs) 2) 0]
      [(= (cdar xs) (cdadr xs)) (+ 1 (helper (cddr xs)))]
      [else (helper (cdr xs))]
      )
    )
  (if (>= a b)
      (error "a was invalid")
      (helper (sort (map (λ (x) (cons x (sum-digit-divisors x))) (range a (+ b 1))) (λ (x y) (< (cdr x) (cdr y)))))
      )
  )

(= (same-sum 28 35) 2) ; the pairs are (28,32) and (29,34)
(same-sum 28 50)

#|
- What is the name of the procedure? same-sum
- How many arguments does it take? Label them.
- What is the domain of the attributes? a < b
- What is the simplest case?
- What is an extreme case? (same-sum 28 50)
- What case would return an error? (same-sum 50 28)
- Can we write down the steps to solve it?

'(28 29 30 31 32 33 34 35)
'((28 . 2) (29 . 0) (30 . ) 31 32 33 34 35)
'((29 . 0) (34 . 0) (28 . 0) (32 . 2))

|#