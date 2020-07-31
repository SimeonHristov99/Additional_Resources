# Tasks

# By using the solutions to the tasks from last week, solve tasks 1 and 2.

# Task 1
One of the main components of The Enigma Machine is a system of rotors. A rotor can be represented with the functions already defined in last week's tasks 4 and 5. The message, then, is passed from rotor to rotor until we reach the final one, the result from which is the final encrypted message. Your task is to write a function that accepts an alphabet, a list of rotors and a message and returns its encrypted equivalent.

Test case:

    enigmaencrypt ['A'..'Z'] [(5,1,1),(7,2,10),(13,3,25)] "ATTACKLONDONTOMORROWATTENAM" -> "ZTUCFOQUULZZGCBEIJHQXRSEOFS" 

# Task 2
Define a function that decrypts a message produced from task 1.

Test case:

    enigmadecrypt ['A'..'Z'] [(5,1,1),(7,2,10),(13,3,25)] "ZTUCFOQUULZZGCBEIJHQXRSEOFS" -> "ATTACKLONDONTOMORROWATTENAM"

# Task 3
A natural number is interesting if it is evenly divided by the sum of its digits. Define such a predicate. Solve the task with one line of code.

Test case:

    isInteresting 410 -> True

# Task 4
Define a function that returns the sum of the special numbers in the interval [a, b] (a <= b). A number is special if it contains 6 and can be expressed as 4k + 1, where k is a whole number. Solve the task with one line of code.

Test case:

    specialSum 1 100 -> 195 (the special numbers are 61, 65 and 69)

# Task 5
Define the function sinus, that accepts a whole number and a real number (representing radians) and returns the n-th partial sum of sin(x). Reference the formula for writing sin(x) around the origin in Task5.png.

Test case:

    mySin 100 1 -> 0.8414709848078965
    mySin 100 0.5 -> 0.479425538604203

# Task 6
Define a function that accepts two one-argument functions "f" and "g" and a list of values and checks whether f dominates g. We say that one function dominates another if for every value the absolute value after applying "f" is greater than or equal to the absolute value after applying "g". Solve the task with one line of code using folding.

Test cases:

    dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5] -> False
    dominates (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5] -> True