# Tasks

## Task 1
Write a function that takes two lists and combines them into a single, sorted list. Solve the task with one line of code.

## Task 2
Write a function matchesFirst that checks whether all the elements from a list "lst" match the first n elements of another list "lst2"

Examples:

    matchesFirst [1, 2, 3] [1, 2, 3, 4, 5] -> True
    matchesFirst [1, 2, 3] [1, 2, 3] -> True
    matchesFirst [1, 2] [1] -> False
    matchesFirst [1, 2, 3] [3, 2, 1] -> False

## Task 3
Write a lambda expression equivalent to the following function: f x = 2 * x. By using the map function, apply such a function partially to a list.

## Task 4
Define the function "difference f a b", that takes a unary function "f" and two real numbers. The function returns the difference f(b) - f(a).

Examples:

    difference (\x -> 2 * x) 15.16 15.20 -> 7.99999999999983e-2
    difference (\x -> 2 * x) 8.5 8 -> -1.0

## Task 5
Define a function that takes a single argument function and returns it applied n times.

Examples:

    1. (applyN (\x -> 2 * x) 5) 2 -> 64
    (applyN (\x -> div x 10) 2) 100 -> 1

Explanation:

    1. We apply 2 * x first to 2, then to (2 * 2) and so on. Thus, we get: (((((2 * 2) * 2) * 2) * 2) * 2) => ((((4 * 2) * 2) * 2) * 2) => (((8 * 2) * 2) * 2) => ((16 * 2) * 2) => (32 * 2) => 64

## Task 6
Define the functions:
 - mIdentity x, that returns the identity of x
 - myCompose f g, that returns the composition of f and g
 - myNegate, p that returns the complement of (the negation of) a predicate p
  - myCurry f x, that returns a function that is the partial application of x over f

Examples:

    mIdentity "Hello" -> "Hello"
    (myCompose (\x -> x - 5) (\y -> y + 25)) 5 -> 25
    (myNegate (\x -> mod x 2 == 0)) 2 -> False
    (myCurry (\a b -> 10 * a + b) 5) 10 -> 60