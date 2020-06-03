# Tasks

# Task 1
Define the tree in Task2_1.png using a constructor. Define a function that inserts a node in a binary search tree. By using it construct the same tree but without using a constructor. Check their equality. Define the tree in Task2_2.png.

Test case:

    insert numberTreeBefore 13 -> (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil)))

    numberTreeBefore == numberTreeAfter -> True

    secondNumberTree -> Node 10 (Node 5 (Node 3 (Node 1 Nil Nil) Nil) (Node 7 (Node 6 Nil Nil) Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil))
    

# Task 2
By using Task2_1.png and Task2_2.png define a function that returns the sum of the nodes with values between L and R (inclusive).

Test cases:

    rangedSum numberTreeBefore 100 50 -> 0
    rangedSum numberTreeBefore 7 15 -> 32
    rangedSum secondNumberTree 6 10 -> 23
    rangedSum secondNumberTree 10 6 -> 23
    rangedSum numberTreeBefore 15 7 -> 32

# Task 3
By using the BST in Task3.png define a function that modifies it so that every node "n" has a new value equal to the sum of the values of the original tree that are greater than or equal to the value of "n".

Test case:

    convert tree -> (Node 30 (Node 36 (Node 36 Nil Nil) (Node 35 Nil (Node 33 Nil Nil))) (Node 21 (Node 26 Nil Nil) (Node 15 Nil (Node 8 Nil Nil))))

# Task 4
Convert the tree in Task2_2.png into a binary indexed tree.

Test case:

    toBinaryIndexed tree -- Node (10,5) (Node (5,2) (Node (3,1) (Node (1,0) Nil Nil) Nil) (Node (7,4) (Node (6,3) Nil Nil) Nil)) (Node (15,7) (Node (13,6) Nil Nil) (Node (18,8) Nil Nil))