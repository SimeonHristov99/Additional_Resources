# Tasks

# Task 1
Write a function that checks whether the numbers different from zero in a list have alternating signs. Make sure the list contains at least two valid numbers.

Examples:

    alternativeSigns [1, -2, 3, -4, 5, -6] -> True
    alternativeSigns [-1, 2, -3, 4, -5, 6] -> True
    alternativeSigns [-1, 2, 0, 0, -5, 6] -> True
    alternativeSigns [-1, 2, -3, 0, -5, 0] -> False
    alternativeSigns [-1, 2, -3, 4, 0, 0] -> True
    alternativeSigns [0, 0, 2, -2] -> True

# Task 2
Define a function that accepts a list of functions that take an integer and return an integer and returns a function "g" that takes an integer "x" and returns g x that is the sum (f<sub>n - 1</sub> . f<sub>n</sub>) for n = 2 .. n. Make sure the list contains at least one function.

Example:

    (pairCompose [(\x -> x+1),(\x -> x+2),(\x -> x+3)]) 1 -> 8 ((1 + 2) + 1) + (1 + 3))

# Task 3
Define a function that takes a word and returns a list of tuples in the form (x, xCount) where for each letter x xCount is the number of times it is present in the word. Ignore capitalization and make sure that the string contains at least one letter.

Examples:

    countOccurrences "Test" -> [('e',1),('s',1),('t',2)]
    countOccurrences "ThisIsAReallyLongWordContaingAlmostEveryCharacter" -> [('a',6),('c',3),('d',1),('e',4),('g',2),('h',2),('i',3),('l',4),('m',1),('n',3),('o',4),('r',5),('s',3),('t',4),('v',1),('w',1),('y',2)]

# Task 4
If f and g are whole number functions and n is a natural number define a function that takes an integer "x" and returns the sum f(x)+g(f(x))+f(g(f(x)))+ ... made up of n arguments.

Example:

    switchsum (\x -> x + 1) (\x -> x * 2) 1 $ 2 -> 3
    switchsum (\x -> x + 1) (\x -> x * 2) 2 $ 2 -> 9
    switchsum (\x -> x + 1) (\x -> x * 2) 3 $ 2 -> 16
    switchsum (\x -> x + 1) (\x -> x * 2) 4 $ 2 -> 30

# Task 5
Check whether a seqence of numbers forms an arithmetic progression.

# Task 6
Define a function that takes a whole number n and returns ascending left suffix of n.

Examples:

    reverseOrdSuff 37563 -> 36
    reverseOrdSuff 32763 -> 367
    reverseOrdSuff 32567 -> 7
    reverseOrdSuff 32666 -> 6
    
# Task 7
Write a function that sums the unique numbers in the sublists of a list n.

Examples:

    sumUnique [[1,2,3,2],[-4,-4],[5]] -> 9 (= 1+3+5)
    sumUnique [[2,2,2],[3,3,3],[4,4,4]] -> 0
    sumUnique [[1,2,3],[4,5,6],[7,8,9]] -> 45