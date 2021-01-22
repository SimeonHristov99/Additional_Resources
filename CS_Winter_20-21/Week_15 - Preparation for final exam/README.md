# Task 1 (Racket)
Define a function that takes two numbers and returns the sum of the numbers in the interval *[a, b]* whose digits are ordered in a descending order.

Example:

    222 IS a number whose digits are ordered in a descending order since: 2 >= 2 >= 2
    201 IS NOT a number whose digits are ordered in a descending order since: 2 >= 0 < 1

Test cases:

    (equal? (sum-numbers 1 9) 45)
    (equal? (sum-numbers 199 203) 200)
    (equal? (sum-numbers 219 225) 663)

# Task 2 (Racket and Haskell)
Define a function that accepts an infinite list of numbers [x<sub>1</sub>, x<sub>2</sub> .. ] and returns a function that for every x and y calculates the expression (x - x<sub>1</sub>) * (x - x<sub>2</sub>) * .. * (x - x<sub>y</sub>).

Test case:

    If g is myPoly [2.7, 3.0 ..]
        then g 2.2 3 -> -0.4399999999999998
    If g is myPoly [2, 3 ..]
        then g 2.2 3 -> 0.2880000000000002

# Task 3 (Haskell)
Define a function that accepts a one-argument function and a list of numbers *[y<sub>1</sub>, y<sub>2</sub> .. y<sub>n</sub>]* and returns a function that for every *x* calculates the expression *f(y<sub>1</sub> * x) + 2 * f(y<sub>2</sub> * x) + .. + n * f(y<sub>n</sub> * x)* .

Notes:

    Solve the task with one line of code!
    Solve the task with typeclasses!

Test cases:

    If g is myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2],
        then g 5 -> 453
    If g is myPolynomial (\x -> x + 10) [3.62, 6.12, 9.45, 8.02, 5, 2],
        then g (-5) -> -356.45
    If g is myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2]
        then g 5 -> 453

# Task 4 (Haskell)
Нека двоично дърво да се представя като: data BTree = Nil | Node Int BTree
BTree. Дефинирайте функция предикат leavesAreEqual :: BTree -> BTree -> Bool, която
получава две двоични дървета bt1 и bt2 и проверява дали възходящата подредба на
стойностите в листата на bt1 е същата като възходящата подредба на стойностите в
листата на bt2.
![Alt text](pictures/bt1.png?raw=true "bt1.png")
![Alt text](pictures/bt2.png?raw=true "bt2.png")
![Alt text](pictures/bt3.png?raw=true "bt3.png")
![Alt text](pictures/bt4.png?raw=true "bt4.png")

Test cases:

    print $ leavesAreEqual t1 t2 == True
    print $ leavesAreEqual t3 t4 == False

# For home
# Task 1 (Racket and Haskell)
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

Test cases:

    (equal? (validate 1714) #f)
    (equal? (validate 12345) #f)
    (equal? (validate 891) #f)
    (equal? (validate 123) #f)
    (equal? (validate 2121) #t)
    (equal? (validate 4736778291034) #t)
    (equal? (validate 4485756008412) #t)
    (equal? (validate 4214154976719) #t)

    print $ validate 1714 == False
    print $ validate 12345 == False
    print $ validate 891 == False
    print $ validate 123 == False
    print $ validate 2121 == True
    print $ validate 4736778291034 == True
    print $ validate 4485756008412 == True
    print $ validate 4214154976719 == True

# Task 2 (Racket and Haskell)
Define a function that accepts a one-argument function and a list of numbers [y<sub>1</sub>, y<sub>2</sub> .. y<sub>n</sub>] and returns a function that accepts "x" and calculates the expression: y<sub>1</sub> * f(x) + y<sub>2</sub> * f(x<sup>2</sup>) + .. + y<sub>n</sub> * f(x<sup>n</sup>) .

Test case:

    print $ (sumExpr (2+) [0, 1, 2, 3]) 2 == 80
    print $ (sumExpr (*0.8) [0, 1, 2, 3, 4, 5]) 10 == 4345680.0

# Task 3
Define a function that accepts a one-argument function "f" and a number "y" and returns a one-argument function that for every "x" returns:

    - y, if it is greater than or equal to the result of applying f to x
    - the result of applying f to x, otherwise

Test cases:

    If g is upperBound (*2) 100
        then g 50 -> 100
    If g is upperBound (*2) 100.236
        then g 500.002 -> 1000.004
    If g is upperBound (\x -> x) 1.001
        then g 1.001 -> 1.001

Notes:

    Pay attention to what you have to return!
    For a "Yes", you must solve the task with one line of code!
    For a "Yes", you must solve the task with typeclasses!

# Task 4
By using the following types define a function that accepts a list of records and returns the hardest subject (the subject for which the average grade is lowest).

type Student = String<br>
type Subject = String<br>
type Note = Double<br>
type Record = (Student, Subject, Note)

Test case:

    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"

# Task 5
Казваме, че едно двоично дърво е конус, ако сумата на върховете на всяко
ниво на дървото е по-голяма от сумата на върховете на предишното ниво.
Като се използва следното представяне на двоично дърво:

data BTree = Nil | BTree Int BTree BTree

Да се дефинира функция cone t, която проверява дали двоичното дърво t е конус.

numberBTree:

![Alt text](pictures/fh_task5.png?raw=true "pictures/fh_task5.png")

Test cases:

    print $ cone numberBTree == True