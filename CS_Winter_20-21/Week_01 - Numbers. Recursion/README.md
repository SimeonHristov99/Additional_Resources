# Tasks 1 - 4
Define procedures that return
 - the smaller of two numbers
 - the average of two numbers

        Test case:

            (f 1 100) => 50(1/2)
 - the sum of the cubes of two numbers

        Test case:

            (= (f -5 -13) -2322)
 - the average of the sum of the squares of *x* and *y*.

        Test case:

            (f 5 20) => 212(1/2)

# Task 5
Define a predicate that checks whether a number *x* is in an interval [*a*, *b*].

# Task 6
Define two procedures *leap-year? n* and *leap-year-one-line? n* that check whether *n* is a leap year. Use *cond* for the first procedure and boolean logical operators for the second.

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

Test cases:

    (display "\nUsing cond\n")
    (equal? (leap-year? 2020) #t)
    (equal? (leap-year? 1988) #t)
    (equal? (leap-year? 1600) #t)
    (equal? (leap-year? 2400) #t)
    (equal? (leap-year? 2023) #f)
    (equal? (leap-year? 1700) #f)
    (equal? (leap-year? 1800) #f)
    (equal? (leap-year? 2100) #f)
    
    (display "\nUsing boolean logical operators\n")
    (equal? (leap-year-one-line? 2020) #t)
    (equal? (leap-year-one-line? 1988) #t)
    (equal? (leap-year-one-line? 1600) #t)
    (equal? (leap-year-one-line? 2400) #t)
    (equal? (leap-year-one-line? 2023) #f)
    (equal? (leap-year-one-line? 1700) #f)
    (equal? (leap-year-one-line? 1800) #f)
    (equal? (leap-year-one-line? 2100) #f)

# Task 7
Define two procedures for calculating the factorial of a number: recursive - *my-fact n* and iterative - *my-fact-iter n*.

Test cases:

    (= (my-fact 11) 39916800)
    (= (my-fact-iter 11) 39916800)

# For home
Define a procedure for calculating the GCD of two numbers.

Recap:

    The Euclidean Algorithm for finding GCD(x,y) is as follows:
    If x = 0 then GCD(x,y)=y.
    If y = 0 then GCD(x,y)=x.
    Write x in quotient remainder form (x = A⋅y + R). Find GCD(y,R) (since GCD(x,y)=GCD(y,R)).

Test cases:

    (= (my-gcd 5 13) 1)
    (= (my-gcd 13 1235) 13)