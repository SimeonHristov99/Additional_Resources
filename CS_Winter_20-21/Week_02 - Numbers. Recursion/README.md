# Task 1
Define two procedures for calculating the *n*-th number if the Fibonacci sequence: recursive - *myFib n* and iterative - *myFibIter n*.

Test cases:

    (myFib 11) => 144
    (myFibIter 11) => 144

# Task 2
Define a predicate *prime? n* that checks whether a given number is prime.

# Task 3
Define a predicate *palindrome? n* that checks whether the non-negative number *n* is a palindrome.

# Task 4
Define a procedure that returns the number of palindromes in the interval [a, b].

Test case:

    (numPalindromes 1 100) => 18
    (numPalindromes 100 1) => 18

# Task 5
Define a procedure *maxDivisor n* that accepts a whole number greater than 1 and returns its greatest divisor (that is less than *n*).

Test case:

    (maxDivisor 10) => 5

# Task 6
Define an iterative procedure that finds the number of odd divisors of a natural number n.

Test case:

    (numOddDivs 100) => 3
    
# For home

# Task 7
Define a procedure *date? d m y* that checks whether the passed date is valid.

Test cases:

    (date? 29 2 2020) => #t
    (date? 1 8 2020) => #t
    (date? 31 8 2020) => #t
    (date? 19 5 1999) => #t
    (date? 29 2 2019) => #f
    (date? 32 8 2020) => #f
    (date? 0 2 2020) => #f

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

# Task 8
Define a procedure that returns the sum of the prime palindromes in the interval [a, b].

Test case:

    (sumPalindromes 1 100) => 28
    (sumPalindromes 100 1) => 28