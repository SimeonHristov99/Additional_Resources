# Task 1
Define a recursive and an iterative procedure for calculating the factorial of a number.

Test cases:

    (= (fact 11) 39916800)
    (= (fact-iter 11) 39916800)

# Task 2
Define a recursive and an iterative procedure for calculating the number at index *i* in the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...).

Test cases:

    (= (fib 11) 89)
    (= (fib-iter 11) 89)
    (= (fib-iter 110) 43566776258854844738105)

# Task 3
Define a predicate that checks whether a number is prime.

    (equal? (prime? 1) #f)
    (equal? (prime? 2) #t)
    (equal? (prime? 3) #t)
    (equal? (prime? 6) #f)
    (equal? (prime? 61) #t)

# Task 4
Define a procedure that reverses a <strong>non-negative</strong> number.

# Task 5
Define a predicate that checks whether a <strong>non-negative</strong> number is a palindrome.

    (equal? (palindrome? 6) #t)
    (equal? (palindrome? 1010) #f)
    (equal? (palindrome? 505) #t)
    (equal? (palindrome? 123321) #t)
    (equal? (palindrome? 654) #f)

# Task 6
Define a predicate that checks whether a number is perfect.

Note:

    A number is perfect if and only if it is natural and equal to the sum of its divisors.

Test cases:

    (equal? (perfect? 6) #t)
    (equal? (perfect? 33550336) #t)
    (equal? (perfect? 495) #f)
    (equal? (perfect? 1) #f)
    
# Task 7
Define a predicate *inc-digits? n* that checks whether the digits of the <strong>non-negative</strong> *n* are ordered in an ascending order.

Test cases:

    (equal? (inc-digits? 1244) #t)
    (equal? (inc-digits? 12443) #f)
    
# For home
# Task 1
Define a procedure that returns the number of palindromes in the interval [a, b].

Test case:

    (= (num-palindromes 1 101) 19)
    (= (num-palindromes 1 100) 18)
    (= (num-palindromes 100 1) 18)

# Task 2
Define a predicate that checks whether two numbers are amicable.

Note:

    Two numbers are amicable if the sum of the divisors of one of them is equal to the other.

Test cases:

    (equal? (amicable? 200 300) #f)
    (equal? (amicable? 220 284) #t)
    (equal? (amicable? 284 220) #t)
    (equal? (amicable? 1184 1210) #t)
    (equal? (amicable? 2620 2924) #t)
    (equal? (amicable? 6232 6368) #t)

# Task 3
Define a procedure *sum-special-primes n d* that returns the sum of the first *n* prime numbers that contain a digit *d*.

Test cases:

    (= (sum-special-primes 5 2) 392)
    (= (sum-special-primes 5 3) 107)
    (= (sum-special-primes 10 3) 462)