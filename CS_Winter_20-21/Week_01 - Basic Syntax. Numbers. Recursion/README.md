# Tasks

# Task 1
Define a procedure _myMin x y_ that returns the smaller of two numbers.

Test case:

    (myMin 13 5) => 5

# Task 2
Define a predicate _inside? x a b_ that checks whether _x_ is in the interval [_a_, _b_].

Test cases:

    (inside? 1 2 3) => #f
    (inside? 2 1 3) => #t

# Task 3
Define two procedures *leapYear? n* and *leapYearOneLine? n* that check whether *n* is a leap year. Use *cond* for the first procedure and boolean logical operators for the second.

Test cases:

    (leapYear? 2020) => #t          (leapYearOneLine? 2020) => #t
    (leapYear? 1988) => #t          (leapYearOneLine? 1988) => #t
    (leapYear? 1600) => #t          (leapYearOneLine? 1600) => #t
    (leapYear? 2400) => #t          (leapYearOneLine? 2400) => #t
    (leapYear? 2023) => #f          (leapYearOneLine? 2023) => #f
    (leapYear? 1700) => #f          (leapYearOneLine? 1700) => #f
    (leapYear? 1800) => #f          (leapYearOneLine? 1800) => #f
    (leapYear? 2100) => #f          (leapYearOneLine? 2100) => #f

Recap:

    Method I:
        A year is leap year if the following conditions are satisfied:
            Year is multiple of 400.
            Year is multiple of 4 and not multiple of 100.


    Method II:
        if year is divisible by 400 then is_leap_year
        else if year is divisible by 100 then not_leap_year
        else if year is divisible by 4 then is_leap_year
        else not_leap_year 

# Task 4
Define a procedure _sumSquares x y_ that returns the sum of the squares of _x_ and _y_.

Test case:

    (sumSquares -5 -13) => 194

# Task 5
Define a procedure _average x y_ that returns the average of _x_ and _y_.

Test case:

    (average 1 100) => 50(1/2)

# Task 6
Define a procedure _squaresAverage x y_ that returns the average of the sum of the squares of _x_ and _y_.

Test case:

    (squaresAverage 5 20) => 212(1/2)

# Task 7
Define a procedure for calculating the GCD of two numbers.

Test case:

    (myGcd 5 13) => 1
    (myGcd 13 1235) => 13

Recap:

    The Euclidean Algorithm for finding GCD(x,y) is as follows:
    If x = 0 then GCD(x,y)=y.
    If y = 0 then GCD(x,y)=x.
    Write x in quotient remainder form (x = A⋅y + R). Find GCD(y,R) (since GCD(x,y)=GCD(y,R)).

# Task 8
Define two procedures for calculating the factorial of a number: recursive - *myFact n* and iterative - *myFactIter n*.

Test case:

    (myFact 11) => 39916800
    (myFactIter 11) => 39916800