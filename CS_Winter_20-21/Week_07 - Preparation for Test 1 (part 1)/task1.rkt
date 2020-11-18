#lang racket

(require math/number-theory)

(define (sum-digit-divisors n)
  (define (helper left-over)
    (cond
      [(zero? left-over) 0]
      [(< left-over 10) (if (divides? left-over n) left-over 0)]
      [else (if (and (not (zero? (remainder left-over 10)))
                     (divides? (remainder left-over 10) n))
                (+ (remainder left-over 10) (helper (quotient left-over 10)))
                (helper (quotient left-over 10))
                )]
      )
    )
  (if (< n 1)
      (error "n was not natural")
      (helper n)
      )
  )

(= (sum-digit-divisors 1) 1)
(= (sum-digit-divisors 28) 2)
(= (sum-digit-divisors 32) 2)
(= (sum-digit-divisors 29) 0)
(= (sum-digit-divisors 34) 0)
(= (sum-digit-divisors 1048) 13)

#| Algorithm:
- What is the name of the procedure? sum-digit-divisors
- How many arguments does it take? Label them. x
- What is the domain of the attributes? x [1 .. ]
- What is the simplest case? (= (sum-digit-divisors 1) 1)
- What is an extreme case? (= (sum-digit-divisors 1048) 13)
- What case would return an error? (sum-digit-divisors -1) => n was not natural
- Can we write down the steps to solve it?
	- (helper left-over)
	- leftOver < 10
		- left-over divides n?
			yes => return left-over
			no => return 0
	- Get the last digit.
	- Does it divide n?
		Yes => add it to the sum && call recursively
		No => call recursively
|#
