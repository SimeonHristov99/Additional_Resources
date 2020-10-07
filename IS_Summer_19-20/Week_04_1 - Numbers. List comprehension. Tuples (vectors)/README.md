# Tasks

## Task 1
Write a function that removes the digit d from the number n.

Examples:

    removeD 1 656 -> 656
    removeD 5 656 -> 66
    removeD 6 656 -> 5
    removeD 0 606 -> 66
    removeD 0 600 -> 6

## Task 2
Write a function that forms a number from every other digit starting from the right of an integer n (n >= 10).

Examples:

    12 -> 1
    12345 -> 42
    852369 -> 628

## Task 3
Given a divisor d and a bound b, find the largest integer N, such that:

    N is divisible by divisor
    N is less than or equal to bound
    N is greater than 0.

Examples:

    maxMultiple 2 7 -> 6
    maxMultiple 3 10 -> 9
    maxMultiple 7 17 -> 14
    maxMultiple 10 50 -> 50
    maxMultiple 37 200 -> 185
    maxMultiple 7 100 -> 98

## Task 4
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

    Note: If the number is a multiple of both 3 and 5, only count it once.

Examples:

    multiples 10 -> 23
    multiples 20 -> 78
    multiples 200 -> 9168

## Task 5
Write a function that finds the maximum digit in a number by searching from right to left.

## Task 6
Write a function that removes the first occurrence of a digit in a number by going from right to left.

Examples:

    removeFistOccurrence 15365 5 -> 1536
    removeFistOccurrence 15365 1 -> 5365

## Task 7
Write a function that sorts a number in descending order.

Examples:

    sortN 1714 -> 7411
    sortN 123450 -> 543210
    sortN 123405 -> 543210
    sortN 123045 -> 543210
    sortN 120345 -> 543210
    sortN 102345 -> 543210
    sortN 8910 -> 9810

## Task 8
By using the solutions from the previous tasks write a function "validate" that validates a credit card number.
Given a positive integer of up to 16 digits, return true if it is a valid credit card number, and false if it is not.

Here is the algorithm:

    1. Double every other digit, scanning from right to left, starting from the second digit (from the right):
            1714 ==> 1*, 7, 1*, 4 ==> 2, 7, 2, 4
            12345 ==> 1, 2*, 3, 4*, 5 ==> 1, 4, 3, 8, 5
            891 ==> 8, 9*, 1 ==> 8, 18, 1

    2. If a resulting number is greater than 9, replace it with the sum of its own digits (which is the same as subtracting 9 from it):
            8, 18*, 1 ==> 8, (1+8), 1 ==> 8, 9, 1
            or
            8, 18*, 1 ==> 8, (18-9), 1 ==> 8, 9, 1

    3. Sum all of the final digits:
            8, 9, 1 ==> 8 + 9 + 1 = 18

    4. Take that sum and divide it by 10. If the remainder equals zero, the original credit card number is valid.

18 (modulus) 10 ==> 8 ==> False , which is not equal to 0, so this is not a valid credit card number

## Task 9
Write a function that find the number of elements in a list.

    myLength [0, 1, 2] -> 3

## Task 10
Write a function that finds the sum of the elements in a list.

    mySum [0, 1, 2] -> 3

## Task 11
Write a function that checks whether an element is present in a list.

    isPresent 0 [0, -1, 2] -> True

## Task 12
Write a function that generates a list made up of the numbers in the interval [a, b].

    inBetween 1 9 -> [1, 2, 3, 4, 5, 6, 7, 8, 9]

## Task 13
Write a function that removes the first element in a list that is equal to x by going from left to right.

    removeFirst 5 [5, 1, 5, 3, 5] -> [1, 5, 3, 5]
    removeFirst 3 [5, 1, 5, 3, 5] -> [5, 1, 5, 5]

## Task 14
Write a function that removes every element equal to x in a list.

    removeAll 5 [5] -> []
    removeAll 4 [4, 4] -> []
    removeAll 5 [1] -> [1]
    removeAll 5 [5, 1, 5, 3, 5] -> [1, 3]
    removeAll 3 [5, 1, 5, 3, 5] -> [5, 1, 5, 5]

## Task 15
Write a function incrementBy that takes a list of integers, an integer and returns a new list made up of the integers from the first argument but incremented by the second argument.

    incrementBy 5 [5] -> [10]
    incrementBy 4 [4, 4] -> [8, 8]
    incrementBy 5 [1] -> [6]
    incrementBy 5 [5, 1, 5, 3, 5] -> [10, 6, 10, 8, 10]
    incrementBy 3 [5, 1, 5, 3, 5] -> [8, 4, 8, 6, 8]

## Task 16
Write a function that outputs the sum of the tuple (x1, x2).

    sumTuple (4, 5) -> 9
    sumTuple (-5, 5) -> 0

## Task 17
Write a function that takes two parameters a and b and returns the tuple (x, y) where x is the whole number division between a and b and y is their modular number division.

    divide (10, 5) -> (2, 0) -- 10 / 5 = 2 and 10 % 5 = 0
    divide (5, 10) -> (0, 5) -- 5 / 10 = 0 and 5 % 10 = 5

## Task 18
Define the Vector data type that is the tuple (x, y, z). Define the following functions:
    
    sumVectors - returns the sum of two vectors
    scaleVector - returns a vector scaled by a number
    dotProduct - скаларно произведение
    crossProduct - векторно произведение
    magnitude - returns the length of a vector

Examples:

    sumVectors (1, 2, 3) (4, 5, 6) -> (5, 7, 9)
    sumVectors (0, 0, 0) (100, 200, -300) -> (100, 200, -300)

    scaleVector (1, 2, 3) 5 -> (5, 10, 15)
    scaleVector (5, 2, 159) -2 -> (-10, -4, -318)

    dotProduct (1, 2, 3) (7, 4, 1) -> (7, 8, 3)
    dotProduct (5, 2, 159) (0, -1, -2) -> (0, -2, -318)

    crossProduct (1, 2, 3) (7, 4, 1) -> (-10, 20, -10)
    crossProduct (5, 2, 159) (0, -1, -2) -> (155, 10, -5)

    magnitude (1, 2, 3) -> 3.7416573867739413
    magnitude (7, 4, 1) -> 8.12403840463596
    magnitude (-10, 20, -10) -> 24.49489742783178
    magnitude (5, 2, 159) -> 159.0911688309568
    magnitude (0, -1, -2) -> 2.23606797749979
    magnitude (155, 10, -5) -> 155.40270267920053

## Task 19
Define the Rat data type that is the tuple (x, y) where x is the nominator and y - the denominator of a rational number. Define a function called normalize which will simplify the nominator and denominator (so that their highest common denominator is 1).

Examples:

    normalize (4, 2) -> (2, 1)
    normalize (8, 4) -> (2, 1)
    normalize (2, 4) -> (1, 2)

## Task 20
By using the solution to task 19, additionally define the following functions for the Rat data type:

    sumRats - returns the sum of two rational numbers
    multiplyRats - returns the product of two rational numbers
    divideRats - returns the quotient of two rational numbers
    areEqual - returns whether two rational numbers are equal


Examples:

    sumRats (2, 5) (5, 2) -> (29, 10)
    sumRats (52, 123) (96, 14) -> (6268, 861)
    sumRats (2, 5) (3, 5) -> (1, 1)

    multiplyRats (2, 5) (5, 2) -> (1, 1)
    multiplyRats (52, 123) (96, 14) -> (832, 287)
    multiplyRats (2, 5) (3, 5) -> (6, 25)

    divideRats (2, 5) (5, 2) -> (4, 25)
    divideRats (52, 123) (96, 14) -> (91, 1476)
    divideRats (2, 5) (3, 5) -> (2, 3)
    
    areEqual (2, 5) (5, 2) -> False
    areEqual (52, 123) (52 * 3, 123 * 3) -> True
    areEqual (2, 6) (5, 15) -> False