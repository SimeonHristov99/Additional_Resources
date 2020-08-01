# Notes
    - what was the difference between iterative and recursive processes?
    - introduce filter, length, range, member, list?, apply, cad*r, for/list with #:when, exact-round

# Tasks

# Task 1
Define two procedures for calculating the *n*-th number if the Fibonacci sequence: recursive - *myFib n* and iterative - *myFibIter n*.

Test case:

    (myFib 11) => 144
    (myFibIter 11) => 144

# Task 2
Define a procedure that calculates the factorial of a number using list comprehension.

# Task 3
Define a procedure *sumOdd a b* that returns the sum of all odd numbers in the interval [a, b].

Test cases:

    (sumOdd 0 20) => 100
    (sumOdd 20 0) => 100

# Task 4
Define an iterative procedure that finds the number of divisors of a natural number n.

Test cases:

    (numOddDivs 100) => 3

# Task 5
Define a predicate *prime? n* that checks whether a given number is prime.

# Task 6
Define a procedure *maxDivisor n* that accepts a whole number greater than 1 and returns its greatest divisor (that is less than *n*).

Test case:

    (maxDivisor 999999999) => 333333333

Note:

    It will (obviously) be a prime number, i.e. use *prime?* to form a list of possible values.

# Task 7
Define a predicate *palindrome? n* that checks whether the non-negative number *n* is a palindrome.

# Bonus

# Task 8
Define a procedure *date? d m y* that checks whether the passed date is valid.

Test cases:

    (isDate 29 2 2020) => #t
    (isDate 1 8 2020) => #t
    (isDate 31 8 2020) => #t
    (isDate 19 5 1999) => #t
    (isDate 29 2 2019) => #f
    (isDate 32 8 2020) => #f
    (isDate 0 2 2020) => #f

Recap - How many days are in each month:

    January - 31
    February - 28 (29 if leap_year)
    March - 31
    April - 30
    May - 31
    June - 30
    July - 31
    August - 31
    September - 30
    October - 31
    November - 30
    December - 31

# Task 9
Define a procedure *minDivisor n* that accepts a whole number greater than 1 and returns its smallest divisor.

Test case:

    (minDivisor 999999999) => 27027027

# Task 10
Define a procedure that returns the sum of all prime numbers in the interval [a, b].

Test case:

    (sumPrimes 1 100) => 1060

# Task 11
Define a procedure that returns the number of palindromes in the interval [a, b].

Test case:

    (sumPalindromes 1 100) => 540