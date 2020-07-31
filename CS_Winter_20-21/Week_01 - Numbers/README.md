# Tasks

# Task 1
Define a procedure _myMin x y_ that returns the smaller of two numbers.

Test case:

    (myMin 13 5) => 5

# Task 2
Define a procedure _inside? x a b_ that checks whether _x_ is in the interval [_a_, _b_].

Test cases:

    (inside? 1 2 3) => #f
    (inside? 2 1 3) => #t

# Task 3
Define a procedure _sumSquares x y_ that returns the sum of the squares of _x_ and _y_.

Test case:

    (sumSquares -5 -13) => 194

# Task 4
Define a procedure _average x y_ that returns the average of _x_ and _y_.

Test case:

    (average 1 100) => 50(1/2)

# Task 5
Define a procedure _squaresAverage x y_ that returns the average of the sum of the squares of _x_ and _y_.

Test case:

    (squaresAverage 5 20) => 212(1/2)

# Task 6
Define two procedures for calculating the *n*-th number if the Fibonacci sequence: recursive - *myFib n* and iterative - *myFibIter n*.

Test case:

    (myFib 11) => 144
    (myFibIter 11) => 144

# Task 7
Define two procedures for calculating the factorial of a number: recursive - *myFact n* and iterative - *myFactIter n*.

Test case:

    (myFact 11) => 39916800
    (myFactIter 11) => 39916800

# Task 8
Define a procedure for calculating the GCD of two numbers.

Test case:

    (myGcd 5 13) => 1
    (myGcd 13 1235) => 13

Recap:

    The Euclidean Algorithm for finding GCD(x,y) is as follows:
    If x = 0 then GCD(x,y)=y.
    If y = 0 then GCD(x,y)=x.
    Write x in quotient remainder form (x = B⋅Q + R). Find GCD(y,R) using the Euclidean Algorithm (since GCD(x,y)=GCD(y,R)).