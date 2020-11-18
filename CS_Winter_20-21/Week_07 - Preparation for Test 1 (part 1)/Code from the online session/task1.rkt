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

(= (sum-digit-divisors 1) 1)
(= (sum-digit-divisors 28) 2)
(= (sum-digit-divisors 32) 2)
(= (sum-digit-divisors 29) 0)
(= (sum-digit-divisors 34) 0)
(= (sum-digit-divisors 1048) 13)

#|
- What is the name of the procedure? sum-digit-divisors
- How many arguments does it take? Label them. x
- What is the domain of the attributes? x [1 .. ]
- What is the simplest case?
- What is an extreme case?
- What case would return an error? (sum-digit-divisors -1)
- Can we write down the steps to solve it?

helper left-over
left-over < 10
  x % left-over == 0
    return left-over
    return 0
get last digit
 x % last digit == 0
   last digit + helper quotient left-over 10
   helper quotient left-over 10

|#