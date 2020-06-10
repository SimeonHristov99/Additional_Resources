# Tasks

# Task 1
Define a function that accepts a one-argument function and a list of numbers [y<sub>1</sub>, y<sub>2</sub> .. y<sub>n</sub>] and returns a function that for every "x" calculates the expression f(y<sub>1</sub> * x) + 2 * f(y<sub>2</sub> * x) + .. + n * f(y<sub>n</sub> * x) .

Test case:

    If g is myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2],
        then g 5 -> 453
    If g is myPolynomial (\x -> x + 10) [3.62, 6.12, 9.45, 8.02, 5, 2],
        then g (-5) -> -356.45
    myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2] $ 5 -- 453

Notes:

    Pay attention to what you have to return!
    For maximum points, you must solve the task with one line of code!
    For maximum points, you must solve the task with typeclasses!
    Think of tests that can break your code!

# Task 2
Define a function that accepts a one-argument function "f" and a number "y" and returns a one-argument function that for every "x" returns:

    - y, if it is greater than or equal to the result of applying f to x
    - the result of applying f to x, otherwise

Test case:

    upperBound (*2) 100 $ 50 -> 100
    upperBound (*2) 100.236 $ 500.002 -> 1000.004
    upperBound (\x -> x) 1.001 $ 1.001 -> 1.001

Notes:

    Pay attention to what you have to return!
    For maximum points, you must solve the task with one line of code!
    For maximum points, you must solve the task with typeclasses!

# Task 3
Define a function that accepts a list of whole number one-argument functions [f<sub>1</sub>, f<sub>2</sub> .. f<sub>n</sub>] and returns a function that for every "x" calculates the composition of the functions with odd indices: f<sub>1</sub>(f<sub>3</sub>(...(f<sub>n</sub>x)...)).

Test case:

    getOddCompositionValue [(\x -> x + 1),(\x -> x * 2),(\x -> x - 1), (\x -> div x 2)] $ 2 -> 2

Note:

    For maximum points, you must solve the task with one line of code!
    For maximum points, you must solve the task with folding!

# Task 4
Define a new data type representing a binary tree of whole numbers. By using it, Task4_1.png (firstTree) and Task4_2.png (secondTree) define a function that returns the sum of the nodes with values between L and R (inclusive).

Test cases:

    rangedSum firstTree 100 50 -> 0 (L = 100, R = 50)
    rangedSum firstTree 7 15 -> 32 (L = 7, R = 15)
    rangedSum secondTree 6 10 -> 23 (L = 6, R = 10)
    rangedSum secondTree 10 6 -> 23 (L = 10, R = 6)
    rangedSum firstTree 15 7 -> 32 (L = 15, R = 7)