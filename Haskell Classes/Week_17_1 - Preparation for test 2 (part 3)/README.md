# Tasks

# Task 1
Define a function that accepts a one-argument function and a list of numbers [y<sub>1</sub>, y<sub>2</sub> .. y<sub>n</sub>] and returns a function that accepts "x" and calculates the expression: y<sub>1</sub> * f(x) + y<sub>2</sub> * f(x<sup>2</sup>) + .. + y<sub>n</sub> * f(x<sup>n</sup>) .

Test case:

    sumExpr (2+) [0, 1, 2, 3] $ 2 -> 80
    sumExpr (*0.8) [0, 1, 2, 3, 4, 5] $ 10 -> 4345680.0

# Task 2
Define a function that accepts an infinite list of numbers [x<sub>1</sub>, x<sub>2</sub> .. ] and returns a function that for every x and y calculates the expression (x - x<sub>1</sub>) * (x - x<sub>2</sub>) * .. * (x - x<sub>y</sub>).

Test case:

    myPoly [2.7, 3.0 ..] 2.2 3 -> -0.4399999999999998

# Task 3
By using the BST in Task3.png define a function that modifies it so that every node "n" has a new value equal to the sum of the values of the original tree that are greater than or equal to the value of "n".

Test case:

    convert tree -> (Node 30 (Node 36 (Node 36 Nil Nil) (Node 35 Nil (Node 33 Nil Nil))) (Node 21 (Node 26 Nil Nil) (Node 15 Nil (Node 8 Nil Nil))))

# Task 4
Convert the tree in Task4.png into a binary indexed tree. Reference Task4Result.png for the visual representation of the result.

Test case:

    toBinaryIndexed tree -> Node (10,5) (Node (5,2) (Node (3,1) (Node (1,0) Nil Nil) Nil) (Node (7,4) (Node (6,3) Nil Nil) Nil)) (Node (15,7) (Node (13,6) Nil Nil) (Node (18,8) Nil Nil))