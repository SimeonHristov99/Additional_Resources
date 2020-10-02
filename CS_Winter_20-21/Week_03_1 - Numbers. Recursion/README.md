# Task 1
Define a procedure that reverses the non-negative number *n*.

# Task 2
Define a predicate *perfect? n* that checks whether *n* is perfect.

    Note: A number is perfect if and only if it is natural and equal to the sum of its divisors.

Test cases:

    (equal? (perfect? 6) #t)
    (equal? (perfect? 33550336) #t)
    (equal? (perfect? 495) #f)
    (equal? (perfect? 1) #f)
    (perfect? 0)
    
# Task 3
Define a predicate *inc-digits? n* that checks whether the digits of the non-negative *n* are ordered in an ascending order.

Test cases:

    (equal? (inc-digits? 1244) #t)
    (equal? (inc-digits? 12443) #f)
    
# Task 4
Define a procedure that takes the parameters *x* and *n* and returns the sum: 1 + x + x^2 + x^3 + ... + x^n. The solution should have linear time complexity!

Test cases:

    (equal? (calculate-sum 5 0) 1)
    (equal? (calculate-sum 5 1) 6)
    (equal? (calculate-sum 10 1) 11)
    (equal? (calculate-sum 1 11) 12)
    (equal? (calculate-sum 2 11) 4095)