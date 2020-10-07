# Tasks

# Task 1
Define a function that takes a natural number n and a digit m and returns a list of all natural numbers up to n that contain the digit m.

# Task 2
Define a function that accepts two whole numbers: n and k, and returns the sum of the first k prime numbers greater than or equal to n.

Examples:

    sumPrimes 1 10 -> 129
    sumPrimes 100 10 -> 1216

# Task 3
Define a function that accepts a number and returns the tuple (x, y) where x is the sum of the digits on even indices of the number and y - the sum of the ones on odd indices.

Examples:

    checkNumber 2728 -> (4,15)
    checkNumber 31415 -> (12,2)
    checkNumber 121 -> (2,2)

# Task 4
Define a function that accepts a natural number greater than 1 and returns a sorted list of prime factors the product of which gives the number.

Examples:

    factorize 152 -> [2, 2, 2,19] (2 * 2 * 2 * 19 = 152)
    factorize 123 -> [3, 41] (3 * 41 = 123)
    factorize 13 -> [13]