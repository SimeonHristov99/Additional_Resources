# Tasks 1 - 3
Define functions that return
 - the smaller of two numbers
     - use if-else
     - use guards
 - the average of two numbers

    Test case:
        
        print $ average 5 6 == 5.5

 - the sum of the cubes of two numbers

    Test cases:

        print $ sumCubes 5 1 == 126
        print $ sumCubes 10 50 == 126000

# Task 4
Define a predicate that checks whether a number *x* is in an interval [*a*, *b*].

 - solve without using lists;
 - solve with lists and where-clause;
 - solve using a lambda of *x* <- how would this be done in Racket?.

Test cases:

    print $ inside 5 1 4 == True
    print $ inside 10 50 20 == True
    print $ inside 10 50 1 == False

 # Task 5
Define a recursive and an iterative function for calculating the factorial of a non-negative number.

Test cases:

    print $ fact 11 == 39916800
    print $ factXs 11 == 39916800
    print $ factIter 11 == 39916800
    -- factIter (-1)

# Task 6
Define a recursive and an iterative function for calculating the number at index *i* in the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...).

Test cases:

    print $ fib 11 == 89
    print $ fibIter 11 == 89
    print $ fibIter 110 == 43566776258854844738105

# Task 7
Define a predicate that checks whether a number is perfect.

 - solve using a linear recursive process
 - solve using lists

Note:

    A number is perfect if and only if it is natural and equal to the sum of its divisors.

Test cases:

    print $ perfect 1 == False
    print $ perfect 6 == True
    print $ perfect 495 == False
    print $ perfect 33550336 == True
    
# Task 8
Define a predicate that checks whether the digits of a non-negative whole number are ordered in an ascending order.

Test cases:

    print $ hasIncDigits 1244 == True
    print $ hasIncDigits 12443 == False

# For home
# Task 1
Define a function that returns the average of the sum of the squares of two whole numbers.

Test cases:

    print $ sqAvg 5 0 == 12.5
    print $ sqAvg 10 13 == 134.5

# Task 2
Define a function for calculating the GCD of two whole numbers. Use guards!

Recap:

    The Euclidean Algorithm for finding GCD(x,y) is as follows:
    If x = 0 then GCD(x,y)=y.
    If y = 0 then GCD(x,y)=x.
    Write x in quotient remainder form (x = A⋅y + R). Find GCD(y,R) (since GCD(x,y)=GCD(y,R)).

Test cases:

    print $ myGcd 5 13 == 1
    print $ myGcd 13 1235 == 13

# Task 3
Define a function that reverses a non-negative number.

# Task 4
Define a predicate that checks whether a non-negative number is a palindrome.

    print $ isPalindrome 6 == True
    print $ isPalindrome 1010 == False
    print $ isPalindrome 505 == True
    print $ isPalindrome 123321 == True
    print $ isPalindrome 654 == False

# Task 5
Define a predicate that checks whether two numbers are amicable.

Note:

    Two numbers are amicable if the sum of the divisors of one of them is equal to the other.

Test cases:

    print $ areAmicable 200 300 == False
    print $ areAmicable 220 284 == True
    print $ areAmicable 284 220 == True
    print $ areAmicable 1184 1210 == True
    print $ areAmicable 2620 2924 == True
    print $ areAmicable 6232 6368 == True

# Task 6
Define a predicate that checks whether a number is prime.

 - solve using guards
 - solve using lists

Test cases:

    print $ isPrime 1 == False
    print $ isPrime 2 == True
    print $ isPrime 3 == True
    print $ isPrime 6 == False
    print $ isPrime 61 == True