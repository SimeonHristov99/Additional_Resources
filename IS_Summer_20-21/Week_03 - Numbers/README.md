# Tasks

## Task 1
Да се дефинира функция pow, която генерира линейно рекурсивен процес и намира x на степен n, където x е реално, а n - естествено число.

## Task 2
Напишете функцията isPrime, използвайки guards.

## Task 3
A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this exercise, we will restrict ourselves to decimal (base 10).

For example, take 153 (3 digits):

    1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

and 1634 (4 digits):

    1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

Write a function that returns true or false depending upon whether the given number is a Narcissistic number in base 10.

## Task 4
Да се дефинира функция sumPrimeDivisors, която намира сумата на всички прости делители на едно число.

## Task 5
Write a function duplicateCount that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Examples:

    "abcde" -> 0 # no characters repeats more than once
    "aabbcde" -> 2 # 'a' and 'b'
    "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
    "indivisibility" -> 1 # 'i' occurs six times
    "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
    "aA11" -> 2 # 'a' and '1'
    "ABBA" -> 2 # 'A' and 'B' each occur twice