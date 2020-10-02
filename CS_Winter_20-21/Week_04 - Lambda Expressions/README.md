# Task 1
Define a predicate *substr? a b* that checks whether the number *x* is a substring of the number *y*.

Test cases:

    (equal? (substr? 123 5123783) #t)
    (equal? (substr? 0 0) #t)
    (equal? (substr? 10 101) #t)
    (equal? (substr? 101 101) #t)
    (equal? (substr? 10 0) #f)
    (equal? (substr? 1253 5123783) #f)
    (equal? (substr? 12 0) #f)

# Task 2
Write a lambda expression

 - that returns the identity of a passed argument;
 - equivalent to the function *f x = 2 * x*;
 - that takes an unary procedure *g* and two real numbers and subtracts g(a) from g(b).

Test case:

    If you pass the equivalent of f, 4.5 and 5.2 to the latter procedure, the result should be -1.4000000000000004.

# Task 3
Define a procedure that takes an unary procedure and returns it applied n times.

Test cases:

    (equal? ((apply-n (λ (x) (* 2 x)) 5) 2) 64)
    (equal? ((apply-n (λ (x) (quotient x 10)) 2) 100) 1)

Note:

    * We apply 2 * x first to 2, then to (2 * 2) and so on. Thus, we get: (((((2 * 2) * 2) * 2) * 2) * 2) => ((((4 * 2) * 2) * 2) * 2) => (((8 * 2) * 2) * 2) => ((16 * 2) * 2) => (32 * 2) => 64

# Task 4
Define the procedure:
 - *compose f g*, that returns the composition of *f* and *g*;
 - *negate p* that returns the complement/negation of a predicate *p*;
  - *curry f x*, that returns a partial application of *x* over the multiple-argument procedure *f*.

Test cases:

    (equal? ((compose (λ (x) (- x 5)) (λ (x) (+ x 25))) 5) 25)
    (equal? ((negate (λ (x) (even? x))) 2) #f)
    (equal? ((my-curry (λ (x y) (+ (* 10 x) y)) 5) 10) 60)