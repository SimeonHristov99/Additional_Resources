# Task 0
In **ONE** line of code:
 - Reverse a number;
 - Find the sum of the divisors of a number;
 - Check whether a number is prime.

# Task 1
Define a function that:
 - adds 1 to every element in a list using partial application;
 - adds 1 to a number using partial application;
 - squares a number and adds one using partial application and function composition.
 
Test cases:

    print $ addOneXsPA [1, 2, 3, 4, 5] == [2, 3, 4, 5, 6]
    print $ addOneNPA 5 == 6
    print $ sqPlusOne 5 == 26

# Task 2
Define a function that returns the sum of the smallest and greatest palindrome divisors of a natural number greater than 1.

 - use list comprehension;
 - use higer order functions.

Test cases:

    print $ getPalindromes 132465 == 8
    print $ getPalindromes 654546 == 8
    print $ getPalindromes 100001 == 100012
    print $ getPalindromes 21612 == 21614
    print $ getPalindromes 26362 == 26364

# Task 3
Define a function that returns the sum of the uneven numbers in a range.

 - use list comprehension
 - use higer order functions

Test cases:

    print $ sumUneven 5 50 == 621
    print $ sumUneven 50 1 == 625
    print $ sumUneven 564 565 == 565

# Task 4
Define a function that checks whether the digits of a non-negative number are ordered in stictly ascending order. The implementation must not include *div* or *mod*.

Test cases:

    print $ isAscending 123 == True
    print $ isAscending 122 == False
    print $ isAscending 0 == True
    print $ isAscending 10 == False
    
# Task 5
Define a function *sumSpecialPrimes n d* that returns the sum of the first *n* prime numbers that contain a digit *d*.

Test cases:

    print $ sumSpecialPrimes 5 2 == 392
    print $ sumSpecialPrimes 5 3 == 107
    print $ sumSpecialPrimes 10 3 == 462

# Task 6
Define a function that accepts a list of whole numbers and returns a list of lists, such that each list contains a sequence.

Test cases:

    print $ pack [1, 2, 3, 7, 8 ,9] == [[1,2,3],[7,8,9]]
    print $ pack [1, 7, 8 ,9] == [[1],[7,8,9]]
    print $ pack [1, 9] == [[1],[9]]

# Task 7
Define a function that takes a word and returns a list of tuples in the form *(x, xCount)* where for each letter *x* *xCount* is the number of times it is present in the word. Ignore capitalization and make sure that the string contains at least one letter.

Test cases:

    print $ countOccurrences "Test" == [('e',1),('s',1),('t',2)]
    print $ countOccurrences "ThisIsAReallyLongWordContaingAlmostEveryCharacter" == [('a',6),('c',3),('d',1),('e',4),('g',2),('h',2),('i',3),('l',4),('m',1),('n',3),('o',4),('r',5),('s',3),('t',4),('v',1),('w',1),('y',2)]

# Task 8
Define a function accepts two lists with equal lengths - *xs* and *ys* and checks whether there exists a number *n*, such that *x<sub>i</sub> = n + y<sub>i</sub>*.

Test cases:

    print $ isImage [] [] == True
    print $ isImage [1, 2, 3] [2, 3, 4] == True
    print $ isImage [1, 2, 3] [2, 5, 4] == False
    print $ isImage [1, 2, 3] [2, 5] == False

# Task 9
Define a function that accepts a list and a number - *n* and returns a list of lists with length *n*.

Implementation detail:

    Use pattern matching!

Test cases:

    print $ chunksOf [1, 2, 3, 4, 5, 6, 7] 3 == [[1,2,3],[4,5,6],[7]]
    print $ chunksOf [1, 2, 3, 4, 5, 6] 3 == [[1,2,3],[4,5,6]]

# Task 10
Define a predicate that checks whether a matrix is triangular.

Test cases:

    print $ isTriangular [[-1]] == True
    print $ isTriangular [[-1, -2, -3], [0, -5, -6], [0, 0, -9]] == True
    print $ isTriangular [[1, 2, 3], [0, 5, 6], [0, 0, 9]] == True
    print $ isTriangular [[0, 2, 3], [0, 0, 6], [1, 0, 0]] == False
    print $ isTriangular [[1, 2, 3], [1, 5, 6], [0, 0, 9]] == False
    print $ isTriangular [[1, 2, 3, 4], [0, 5, 6, 7], [0, 0, 8, 9], [0, 0, 0, 9]] == True

# Task 11
Define a function that returns the product of all natural numbers in a list, the sum of the divisors of which is a multiple of k.

Implementation details:

    Use list comprehension!
    Use pattern matching!

Test cases:

    print $ naturalProduct [-1, 0, -2, -3] 5 == 0 -- There are no natural numbers
    print $ naturalProduct [5, 10] 5 == 0 -- Sum of the divisors is 9
    print $ naturalProduct [95, 75, 15, 55, 11, 14, 18, 35, 25] 5 == 1330

# For home
# Task 1
Define a function that accepts a list of whole numbers - *xs* and a number - *n* and:

 - adds that number to every element in the list;
 - calculates (x + n)<sup>2</sup> using function composition (x spans xs).
 - divides every number in *xs* by *n*. The declaration should be *divByN :: [Int] -> Int -> [Double]*;
 - removes all numbers smaller than *n* from *xs*.
 
Implementation details:

    All implementations should use partial function application!
    Include a test case where n is a negative number in *divByN*!

Test cases:

    print $ addN [1, 2, 3, 4, 5] 9999999999999999999999 == [10000000000000000000000,10000000000000000000001,10000000000000000000002,10000000000000000000003,10000000000000000000004]
    print $ sqAddN [1, 2, 3, 4, 5] 5 == [36,49,64,81,100]
    print $ divByN [1, 2, 3, 4, 5] 5 == [0.2,0.4,0.6,0.8,1.0]
    print $ filterByN [1, 2, 3, 4, 5] 3 == [3,4,5]

# Task 2
Define **TWO** functions - *mergeLinearRec* and *mergeXs*. They accept two sorted lists and combine them into one that is also sorted. 

Implementation details:

    mergeLinearRec should implement a linear recursive process!
    mergeXs should have only list manipulations!
    mergeXs should be solved with ONE line of code!

Test cases:

    print $ mergeLinearRec [1, 2, 3] [2, 3, 4, 5, 6] == [1, 2, 3, 4, 5, 6]
    print $ mergeLinearRec [1, 2, 3] [2] == [1, 2, 3]
    print $ mergeLinearRec [1, 2, 3] [7, 8, 9] == [1, 2, 3, 7, 8, 9]
    print $ mergeLinearRec [2, 3, 4, 5, 6] [1, 2, 3] == [1,2,3,4,5,6]
    print $ mergeLinearRec [2] [1, 2, 3] == [1,2,3]
    print $ mergeLinearRec [7, 8, 9] [1, 2, 3] == [1,2,3,7,8,9]
    print $ mergeLinearRec [7, 9, 11] [8, 10, 12] == [7,8,9,10,11,12]
    -- repeat the same tests with mergeXs

# Task 3
Define a function that returns a list of the prime numbers in a given interval.

Implementation detail:

    Use list comprehension whereever possible!

Test cases:

    print $ primesInRange 1 100 == [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
    print $ primesInRange 100 1 == [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]

# Task 4
Define a function that takes a whole number and returns its ascending left suffix.

Test cases:

    print $ reverseOrdSuff 37563 == 36
    print $ reverseOrdSuff 32763 == 367
    print $ reverseOrdSuff 32567 == 7
    print $ reverseOrdSuff 32666 == 6

# Task 5
Write a function that sums the unique numbers in the sublists of a list n.

Test cases:

    print $ sumUnique [[1,2,3,2],[-4,-4],[5]] == 9 -- (= 1 + 3 + 5)
    print $ sumUnique [[2,2,2],[3,3,3],[4,4,4]] == 0
    print $ sumUnique [[1,2,3],[4,5,6],[7,8,9]] == 45

# Task 6
Write a function returns the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Test cases:

    print $ duplicateCount "" == 0 -- no characters repeats more than once
    print $ duplicateCount "abcde" == 0
    print $ duplicateCount "aabbcde" == 2 -- 'a' and 'b'
    print $ duplicateCount "aabBcde" == 2 -- 'a' occurs twice and 'b' twice (`b` and `B`)
    print $ duplicateCount "indivisibility" == 1 -- 'i' occurs six times
    print $ duplicateCount "Indivisibility" == 1
    print $ duplicateCount "aA11" == 2 -- 'a' and '1'
    print $ duplicateCount "ABBA" == 2 -- 'A' and 'B' each occur twice
    print $ duplicateCount "Indivisibilities" == 2 -- 'i' occurs seven times and 's' occurs twice
    print $ duplicateCount ['a'..'z'] == 0
    print $ duplicateCount (['a'..'z'] ++ ['A'..'Z']) == 26

# Task 7
Define a function that accepts a string and removes all duplicate letters

Note:

    Two characters are duplicate, if:
        - they represent the same character;
        - they are next to each other;
        - the first is upper-case and the second - lower-case (or vice versa).

Test case:

    print $ reduceStr "dabAcCaCBAcCcaDD" == "dabCBAcaDD" -- dabAcCaCBAcCcaDD -> dabAaCBAcCcaDD -> dabCBAcCcaDD -> dabCBAcaDD
                                                                ^^                 ^^                   ^^