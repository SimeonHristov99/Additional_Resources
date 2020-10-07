# Tasks

# Note: All lists are interpreted as lists of integers, unless stated otherwise.

## Task 1
Define a function that checks whether a list is empty.

## Task 2
Define a function that returns the prime numbers in the range (a, b) that end with the digit 7.

## Task 3
Define a function that returns the first element of a list. Throw an error if the list does not have elements.

## Task 4
Define a function that removes the first element of a list. Throw an error if the list does not have elements.

## Task 5
Define a function that removes the element "a" from the list "lst". Solve the exercise with one line of code.

## Task 6
Define a function that forms a list from the last k elements of the list "lst".

Examples:

    formList 5 [1, 2, 3, 4, 5, 6] -> [6, 5, 4, 3, 2]
    formList 5 [1, 2, 3] -> [3, 2, 1]

## Task 7
Define a function that removes the first n elements from the list lst. Solve the exercise with pattern matching and with a built-in function.

Examples:

    formList 5 [1, 2, 3, 4, 5, 6] -> [6]
    formList 5 [1, 2, 3] -> []

## Task 8
Define a function that takes in a number and represents it with a list made up from its digits.

## Task 9
Define a function that finds the minimum element in a list and appends it to the front of a list.

Example:

    minToFront [2, 5, 8, 0, 6, 3] -> [0, 2, 5, 8, 6, 3]
    minToFront [2, 5, 8, 0, 6, 0] -> [0, 2, 5, 8, 6]

## Task 10
Define a function that concatenates two lists.

Examples:

    concatenate [1, 2, 3] [5, 8, 9] -> [1, 2, 3, 5, 8, 9]
    concatenate [1] [5, 8, 9] -> [1, 5, 8, 9]
    concatenate [1, 2, 3] [5] -> [1, 2, 3, 5]

## Task 11
Define a function that concatenates the elements of a list.

Example:

    join [[1, 2], [5, 6], [9]] -> [1, 2, 5, 6, 9, 10]

## Task 12
Define a function that takes two lists and returns a list of tuples containing their elements.

Example:

    toTuples [1, 2, 3, 4] [4, 3, 2, 1] -> [(1, 4), (2, 3), (3, 2), (4, 1)]
    toTuples [1, 2] [] -> [(1, 0), (2, 0)]

## Task 13
Define a function that returns a list of booleans that state whether the first element of the tuple is the square root of the second (without calculating the square root!).

Example:

    checkRoot [(5, 25), (6, 36), (7, 47), (8, 88)] -> [True, True, False, False]

## Task 14
Define a function that returns a sublist from n to m from the list lst. Solve the task with one line of code.

## Task 15
Define a function that returns a list made up of lists with length n from the list lst.

Examples:

    subLists [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 2 -> [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]
    subLists [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 4 -> [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10]]

## Task 16
Define a function that checks whether a list is sorted (in ascending or descending order).

Examples:

    isSorted [1, 2, 3, 3, 3, 4, 5, 6, 6] -> True
    isSorted [1, -1, -3, -3, -3, -4, -5, -6, -6] -> True
    isSorted [1, 2, 3, 3, 3, 4, 5, 6, 5] -> False

## Task 17
Define a function that creates the tuple (x, y) where x is the smaller element of every tuple and y - the larger. Make sure the list contains at least one element.

Examples:

    combine [(1, 2), (1, 2)] -> (11, 22)
    combine [(3, 9), (8, 7), (7, 9), (8, 8), (5, 0), (9, 2)] -> (377802, 989859)

## Task 18
Define a function that creates a list of tuples (x, y) where x is the smaller digit when comparing it with the digit at the same index from the second number.

Examples:

    combine (377802, 989859) -> [(3, 9), (7, 8), (7, 9), (8, 8), (0, 5), (2, 9)]
    combine (12, 21) -> [(1, 2), (1, 2)]

## Task 19
Define a function that returns a list of tuples (x, y) where y is the square of x. X goes from a to b with a step k.

Example:

    getSquares 0 100 10 -> [(0, 0), (10, 100), (20, 400), (30, 900), (40, 1600), (50, 2500), (60, 3600), (70, 4900), (80, 6400), (90, 8100), (100, 10000)]

## Task 20
Define a function that calculates the volume of a list of cylinders. Let the cylinder be expressed as the following: type Cylinder = (Double, Double), where the first coordinate is the radius and the second - its height.

Example:

    getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] -> [785.4, 157.08, 125.66, 62.83]

## Task 21
Define a function that receives a list and a natural number and returns a list containing only the numbers bigger than n.

## Task 22
Define a function that returns a tuple (x, y) where x is True if for every element in two lists a<sub>i</sub> = x + b<sub>i</sub>. Return the boolean and the x.

Example:

    isImage [1, 2, 3, 4] [2, 3, 4, 5] -> (True, 1)
    isImage [1, 2, 3, 4] [4, 5, 6, 7] -> (True, 3)
    isImage [1, 2, 3, 4] [4, 5, 6, 6] -> (False, 0)
    isImage [1, 2] [-1, -2] -> (False, 0)
    isImage [1, 2, 3, 4] [2, 3, 4, 4] -> (False, 0)
    
## Task 23
Define a function that returns a list of the prime divisors of a number.

Examples:

    listPrimeDivisors 1000 -> [2, 5]
    listPrimeDivisors 98 -> [2, 7]

## Task 24
Да се дефинира предикат isTriangular :: [[Int]] -> Bool, който получава квадратна числова матрица, представена като списък от списъци, и проверява дали тя е горно триъгълна, т.е. дали всичките елементи под главния ѝ диагонал са нули.

Examples:

    isTriangular [[1, 2, 0], [0, 4, 5], [0, 0, 9]] -> True
    isTriangular [[1, 2, 0], [0, 4, 5], [0, 8, 9]] -> False

## Task 25
Define a function that inserts the element x in position n in the list lst.

Example:

    insert 2 6 [1, 2, 5, 3, 65] -> [1, 2, 6, 5, 3, 65] (2 is the index where 6 must appear)
    insert 5 6 [1, 2, 5, 3, 65] -> [1, 2, 5, 3, 65, 6]
    insert 0 6 [1, 2, 5, 3, 65] -> [6, 1, 2, 5, 3, 65]