# Task 1
Define a function that accepts:
 - a function and returns a lambda that accepts an argument and applies that function to it;
 - a predicate and returns a lambda that accepts a number and applies the negated predicate to it;
 - two functions and returns their composition over an argument;
 - returns a function that is the partial application of f over x;
 - (\ x y z -> x y z) (\ x y -> x + y) 5 6 -- What will the output be?

Test cases:

    print $ (myLambda (\ x -> x)) 5 == 5
    print $ (myLambda (\ x -> x)) "Hello" == "Hello"
    print $ (myLambda (+1)) 5 == 6
    print $ (negatePred (\x -> mod x 2 == 0)) 2 == False
    print $ (compose (\x -> x - 5) (\y -> y + 25)) 5 == 25
    print $ (compose group sort) "Hello World" == [" ","H","W","d","e","lll","oo","r"]
    print $ (partiallyApply (\x y -> 10 * x + y) 5) 10 == 60

# Task 2
Define the function that accepts an unary function - *f*, and returns a lambda of two real numbers - *x*, *y*, and subtracts f(x) from f(y).

Implementation detail:

    Solve the task with one line of code!
    Initially use Double, but then transition to all number types.

Test cases:
    
    print $ (difference (\x -> 2 * x)) 15.16 15.20 == 7.99999999999983e-2
    print $ (difference (\x -> 2 * x)) 8.5 8 == -1.0

# Task 3
Define a function that accepts a one-argument function *f* and a number *y* and returns a one-argument function that for every *x* returns:

 - *y*, if it is greater than or equal to the result of applying *f* to *x*;
 - the result of applying *f* to *x*, otherwise.

Implementation detail:

    Solve the task with one line of code!
    Initially use Double, but then transition to all number types.

Test cases:

    If g is upperBound (*2) 100
        then g 50 -> 100
    If g is upperBound (*2) 100.236
        then g 500.002 -> 1000.004
    If g is upperBound (\x -> x) 1.001
        then g 1.001 -> 1.001

# Task 4
Write a function that outputs the sum of the tuple (x1, x2).

 - solve with pattern matching;
 - solve without pattern matching;
 - solve using a lambda.

Test cases:

    print $ sumTuple (4, 5) == 9
    print $ sumTuple (-5, 5) == 0

# Task 5
Write a function that takes two parameters a and b and returns the tuple (x, y) where x is the whole number division between a and b and y is their modular number division.

 - solve with pattern matching;
 - solve without pattern matching;
 - solve using a lambda.

Implementation detail:

    Initially use Int, but then transition to Point.

Test cases:

    print $ dividePM (10, 5) == (2, 0) -- 10 / 5 = 2 and 10 % 5 = 0
    print $ dividePM (5, 10) == (0, 5) -- 5 / 10 = 0 and 5 % 10 = 5
    print $ divideNonPM (10, 5) == (2, 0)
    print $ divideNonPM (5, 10) == (0, 5)

# Task 6
Define the Rat data type that is the tuple (x, y) where x is the nominator and y - the denominator of a rational number. Define a function called normalize which will simplify the nominator and denominator (so that their highest common denominator is 1).

Implementation Detail:

    Use the type annotation!

Test cases:

    print $ normalize (4, 2) == (2, 1)
    print $ normalize (8, 4) == (2, 1)
    print $ normalize (2, 4) == (1, 2)

# Task 7
Define a function that returns a list of tuples (x, y) where y is the square of x.

Note:

    x goes from a to b with a step k.

Test cases:

    print $ getSquares 0 100 10 == [(0, 0), (10, 100), (20, 400), (30, 900), (40, 1600), (50, 2500), (60, 3600), (70, 4900), (80, 6400), (90, 8100), (100, 10000)]

# Task 8
Define the Vector data type that is the tuple (x, y, z). Define the following functions:
    
    sumVectors - returns the sum of two vectors;
    scaleVector - returns a vector scaled by a number.

Implementation Detail:

    Use the type annotation!

Test cases:

    print $ sumVectors (1, 2, 3) (4, 5, 6) == (5, 7, 9)
    print $ sumVectors (0, 0, 0) (100, 200, -300) == (100, 200, -300)

    print $ scaleVector (1, 2, 3) 5 == (5, 10, 15)
    print $ scaleVector (5, 2, 159) -2 == (-10, -4, -318)

# For home
# Task 1
Define a function that returns the sum of the smallest and greatest palindrome divisors of a natural number greater than 1.

Test cases:

    print $ getPalindromes 132465 == 8
    print $ getPalindromes 654546 == 8
    print $ getPalindromes 100001 == 100012
    print $ getPalindromes 21612 == 21614
    print $ getPalindromes 26362 == 26364

# Task 2
Check whether a seqence of numbers forms an arithmetic progression.

## IF-ELSE AND GUARDS THAT RETURN TRUE OR FALSE ARE FORBIDDEN


Test cases:

    print $ isArithmentic [3] == True
    print $ isArithmentic [3, 5] == True
    print $ isArithmentic [1, 2, 3, 4, 5] == True
    print $ isArithmentic [3, 5, 7, 9, 11] == True
    print $ isArithmentic [3, 5, 8, 9, 11] == False

# Task 3
Define a function that returns the sum of the special numbers in the interval [a, b] (a <= b). A number is special if it contains 6 and can be expressed as 4k + 1, where k is a whole number.

Implementation detail:

    Solve the task with one line of code.

Test case:

    print $ specialSum 1 100 == 195 -- 61, 65, 69

# Task 4
Define a function that takes a single argument function and returns it applied n times.

Test cases:

    print $ (applyN (\x -> 2 * x) 5) 2 == 64
    print $ (applyN (\x -> div x 10) 2) 100 == 1

Explanation:

    We apply 2 * x first to 2, then to (2 * 2) and so on. Thus, we get: (((((2 * 2) * 2) * 2) * 2) * 2) => ((((4 * 2) * 2) * 2) * 2) => (((8 * 2) * 2) * 2) => ((16 * 2) * 2) => (32 * 2) => 64

# Task 5
![Alt text](pictures/forHomeTask5.png?raw=true "forHomeTask5.png")

# Task 6
![Alt text](pictures/forHomeTask6.png?raw=true "forHomeTask6.png")

# Task 7
Дефинирайте функция *repeater str*, която получава като аргумент символен низ и връща анонимна функция на два аргумента - *count* и *glue* (число и низ). Оценката на обръщението към върнатата функция е низ, който се получава чрез *count*-кратно повтаряне на низа *str*, при което между всеки две съседни повторения на *str* стои низът *glue*.

Implementation detail:

    count will always be a natural number. You needn't validate it.

Test cases:

    print $ (repeater "I love Haskell") 3 " " == "I love Haskell I love Haskell I love Haskell"
    print $ (repeater "Quack") 5 "!" == "Quack!Quack!Quack!Quack!Quack"

# Task 8
For the Vector data type we defined in class, define the following functions:

    dotProduct   - scalar product                 - скаларно произведение;
    crossProduct - vector product                 - векторно произведение;
    magnitude    - returns the length of a vector - дължината на вектор.

Implementation Detail:

    Use the type annotation!

Test cases:

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