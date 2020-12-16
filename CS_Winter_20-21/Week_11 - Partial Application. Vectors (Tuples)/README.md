# Task 1
Define a function that:

 - checks whether a list is empty;
 - returns the first element of a list. Throw an error if the list does not have elements;
 - removes the first element of a list. Throw an error if the list does not have elements;
 - removes the first n elements from a list;
 - concatenates two lists;
 - concatenates the elements of a list (++ is allowed):
        - solve with pattern matching;
        - solve with folding.

Implementation detail:

    You cannot use any built-in functions.

Test cases:

    print $ isNull [] == True
    print $ isNull [1 .. 5] == False
    print $ isNull ['a', 'b'] == False
    print $ isNull [1.75 .. ] == False
    
    print $ firstEl [1] == 1
    print $ firstEl [10, 5, 6] == 10
    print $ firstEl ["I am", "You are"] == "I am"

    print $ removeFirst [5, 2, 3] == [2, 3]
    print $ removeFirst ["OOpps"] == []

    print $ formList 5 [1, 2, 3, 4, 5, 6] == [6]
    print $ formList 5 ["A", "B", "C"] == []

    print $ concatenate [1, 2, 3] [5, 8, 9] == [1, 2, 3, 5, 8, 9]
    print $ concatenate [1] [5, 8, 9] == [1, 5, 8, 9]
    print $ concatenate ['1', '2', '3'] ['5'] == "1235"

    print $ join [[1, 2], [5, 6], [9]] == [1, 2, 5, 6, 9]
    print $ join [['H'], ['a', 's'], "kell"] == "Haskell"

# Task 2
Define a predicate that checks whether a matrix is triangular.

Implementation details:

    Use pattern matching!

Test cases:

    print $ isTriangular [] == True
    print $ isTriangular [[-1]] == True
    print $ isTriangular [[-1, -2, -3], [0, -5, -6], [0, 0, -9]] == True
    print $ isTriangular [[1, 2, 3], [0, 5, 6], [0, 0, 9]] == True
    print $ isTriangular [[0, 2, 3], [0, 0, 6], [1, 0, 0]] == False
    print $ isTriangular [[1, 2, 3], [1, 5, 6], [0, 0, 9]] == False
    print $ isTriangular [[1, 2, 3, 4], [0, 5, 6, 7], [0, 0, 8, 9], [0, 0, 0, 9]] == True

# Task 3
Write a function that outputs the sum of the tuple (x1, x2).

 - solve with pattern matching;
 - solve without pattern matching;
 - solve using a lambda.

Test cases:

    print $ sumTuple (4, 5) == 9
    print $ sumTuple (-5, 5) == 0

# Task 4
Write a function that takes two parameters a and b and returns the tuple (x, y) where x is the whole number division between a and b and y is their modular number division.

 - solve with pattern matching;
 - solve without pattern matching;
 - solve using a lambda.

Test cases:

    print $ divide (10, 5) == (2, 0) == 10 / 5 = 2 and 10 % 5 = 0
    print $ divide (5, 10) == (0, 5) == 5 / 10 = 0 and 5 % 10 = 5

# Task 5
Define the Vector data type that is the tuple (x, y, z). Define the following functions:
    
    sumVectors - returns the sum of two vectors;
    scaleVector - returns a vector scaled by a number;
    dotProduct - scalar product;
    crossProduct - vector product;
    magnitude - returns the length of a vector.

Implementation Detail:

    Use the type annotation!

Test cases:

    print $ sumVectors (1, 2, 3) (4, 5, 6) == (5, 7, 9)
    print $ sumVectors (0, 0, 0) (100, 200, -300) == (100, 200, -300)

    print $ scaleVector (1, 2, 3) 5 == (5, 10, 15)
    print $ scaleVector (5, 2, 159) -2 == (-10, -4, -318)

    print $ dotProduct (1, 2, 3) (7, 4, 1) == (7, 8, 3)
    print $ dotProduct (5, 2, 159) (0, -1, -2) == (0, -2, -318)

    print $ crossProduct (1, 2, 3) (7, 4, 1) == (-10, 20, -10)
    print $ crossProduct (5, 2, 159) (0, -1, -2) == (155, 10, -5)

    print $ magnitude (1, 2, 3) == 3.7416573867739413
    print $ magnitude (7, 4, 1) == 8.12403840463596
    print $ magnitude (-10, 20, -10) == 24.49489742783178
    print $ magnitude (5, 2, 159) == 159.0911688309568
    print $ magnitude (0, -1, -2) == 2.23606797749979
    print $ magnitude (155, 10, -5) == 155.40270267920053

# Task 6
Define the Rat data type that is the tuple (x, y) where x is the nominator and y - the denominator of a rational number. Define a function called normalize which will simplify the nominator and denominator (so that their highest common denominator is 1).

Implementation Detail:

    Use the type annotation!

Test cases:

    print $ normalize (4, 2) == (2, 1)
    print $ normalize (8, 4) == (2, 1)
    print $ normalize (2, 4) == (1, 2)

# Task 7
Define a function that calculates the volume of a list of cylinders. Let the cylinder be expressed as the following: type Cylinder = (Double, Double), where the first coordinate is the radius and the second - its height.

Test case:

    print $ getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] == [785.3981633974483,157.07963267948966,125.66370614359172,62.83185307179586]

# Task 8
Define a function that takes two lists and returns a list of tuples containing their elements.

Test cases:

    print $ toTuples [1, 2, 3, 4] [4, 3, 2, 1] == [(1, 4), (2, 3), (3, 2), (4, 1)]
    print $ toTuples [1.52, 2.75] [] == [(1.52, 0), (2.75, 0)]

# Task 9
Define a function that returns a list of tuples (x, y) where y is the square of x.

Note:

    x goes from a to b with a step k.

Test cases:

    print $ getSquares 0 100 10 == [(0, 0), (10, 100), (20, 400), (30, 900), (40, 1600), (50, 2500), (60, 3600), (70, 4900), (80, 6400), (90, 8100), (100, 10000)]

# Task 10
Define **TWO** functions that return a list of booleans that state whether the first element of the tuple is the square root of the second (without calculating the square root!).

Implementation detail:

    - Solve using list comprehension;
    - Solve using higher order functions.

Test case:

    print $ checkRoot [(5, 25), (6, 36), (7, 47), (8, 88)] == [True, True, False, False]

# Task 11
Define a function that returns all sublists with length n from a given list.

Test cases:

    print $ subLists [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 2 == [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]
    print $ subLists [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 4 == [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10]]

# For Home
# Task 1
Write a function that checks whether an element is present in a list.

Implementation detail:

    You cannot use elem, head or tail!

Test case:

    print $ isPresent 0 [0, -1, 2] == True
    print $ isPresent 1 [0, 1, 2] == True
    print $ isPresent 2 [0, 1, -2] == False
    print $ isPresent 3 [0, 1, 2] == False

# Task 2
Write a function that removes the first element in a list that is equal to x by going from left to right.

Implementation detail:

    You cannot use head or tail!

Test cases:

    print $ removeFirst 5 [5, 1, 5, 3, 5] == [1, 5, 3, 5]
    print $ removeFirst 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]

# Task 3
Write a function that removes every element equal to x in a list.

Implementation details:

    - Solve using pattern matching.
    - Solve using higher order functions and PARTIAL APPLICATION.

Test cases:

    print $ removeAll 5 [5] == []
    print $ removeAll 4 [4, 4] == []
    print $ removeAll 5 [1] == [1]
    print $ removeAll 5 [5, 1, 5, 3, 5] == [1, 3]
    print $ removeAll 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]

# Task 4
Define the following functions for the Rat data type:

    sumRats - returns the sum of two rational numbers
    multiplyRats - returns the product of two rational numbers
    divideRats - returns the quotient of two rational numbers
    areEqual - returns whether two rational numbers are equal

Implementation Detail:

    Use the type annotation!

Test cases:

    print $ sumRats (2, 5) (5, 2) == (29, 10)
    print $ sumRats (52, 123) (96, 14) == (6268, 861)
    print $ sumRats (2, 5) (3, 5) == (1, 1)

    print $ multiplyRats (2, 5) (5, 2) == (1, 1)
    print $ multiplyRats (52, 123) (96, 14) == (832, 287)
    print $ multiplyRats (2, 5) (3, 5) == (6, 25)

    print $ divideRats (2, 5) (5, 2) == (4, 25)
    print $ divideRats (52, 123) (96, 14) == (91, 1476)
    print $ divideRats (2, 5) (3, 5) == (2, 3)

    print $ areEqual (2, 5) (5, 2) == False
    print $ areEqual (52, 123) (52 * 3, 123 * 3) == True
    print $ areEqual (2, 6) (5, 15) == True

# Task 5
Define a function that creates the tuple (x, y) where x is the smaller element of every tuple and y - the larger. Make sure the list contains at least one element.

Implementation details:

    Use pattern matching!

Test cases:

    print $ combine [(1, 2), (1, 2)] == (11, 22)
    print $ combine [(3, 9), (8, 7), (7, 9), (8, 8), (5, 0), (9, 2)] == (377802, 989859)

# Task 6
Define a function that returns a tuple (x, y) where x is True if for every element in two lists a<sub>i</sub> = x + b<sub>i</sub>. Return the boolean and the x.

Test cases:

    print $ isImage [1, 2, 3, 4] [2, 3, 4, 5] == (True, 1)
    print $ isImage [1, 2, 3, 4] [4, 5, 6, 7] == (True, 3)
    print $ isImage [1, 2, 3, 4] [4, 5, 6, 6] == (False, 0)
    print $ isImage [1, 2] [-1, -2] == (False, 0)
    print $ isImage [1, 2, 3, 4] [2, 3, 4, 4] == (False, 0)

# Task 7
Define **TWO** functions - *isSorted* and *isSortedXs* that check whether a list is sorted (in ascending or descending order).

Implementation detail:

    Use pattern matching!

Test cases:

    print $ isSorted [-5, -5, -6] == True
    print $ isSorted [-5, -5, -4] == True
    print $ isSorted [1, 1, 1, 1, 1, 1, 1, 1, 1] == True
    print $ isSorted [1, 2, 3, 3, 3, 4, 5, 6, 6] == True
    print $ isSorted [1, -1, -3, -3, -3, -4, -5, -6, -6] == True
    print $ isSorted [1, 2, 3, 3, 3, 4, 5, 6, 5] == False
    print $ isSorted [-100, -99, -99, -99] == True
    print $ isSorted [-100, -99, -99, -99, 100] == True
    print $ isSorted [100, 101, -102] == False
    print $ isSorted [1, 2, 3, 4, 5, 6] == True
    print $ isSorted [-1, -2, -3, -4, -5, -6] == True
    
# Task 8
Define a function *rf* that takes two unary, whole-number functions as parameters - *f* and *g* and returns a binary function that takes a list - *xs* as its first argument, and an unary function - *h* as its second argument. The result from the call to *rf* should be a list containing elements of the form *h(x)* where *x* spans *ns* and *f(x) > g(x)*.

Test case:

    print $ (rf ((-) (-4)) (* (-2))) [1..10] (* 3) == [15,18,21,24,27,30] -- only 5, 6, 7, 8, 9 and 10 satisfy the condition

# Task 9
Define a function that accepts a list and a number - *n* and returns a list of lists with length *n*.

Implementation detail:

    Use pattern matching!

Test cases:

    print $ chunksOf [1, 2, 3, 4, 5, 6, 7] 3 == [[1,2,3],[4,5,6],[7]]
    print $ chunksOf [1, 2, 3, 4, 5, 6] 3 == [[1,2,3],[4,5,6]]

# Task 10
Define a function that returns the product of all natural numbers in a list, the sum of the divisors of which is a multiple of k.

Implementation details:

    Use list comprehension!
    Use pattern matching!

Test cases:

    print $ naturalProduct [-1, 0, -2, -3] 5 == 0 -- There are no natural numbers
    print $ naturalProduct [5, 10] 5 == 0 -- Sum of the divisors is 9
    print $ naturalProduct [95, 75, 15, 55, 11, 14, 18, 35, 25] 5 == 1330