# Tasks

# Task 1
Define the tree in Task2_1.png using a constructor. Define a function that inserts a node in a binary search tree. By using it construct the same tree but without using a constructor. Check their equality. Define the tree in Task2_2.png.

Test case:

    insert numberTreeBefore 13 -> (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil)))

    numberTreeBefore == numberTreeAfter -> True

    secondNumberTree -> Node 10 (Node 5 (Node 3 (Node 1 Nil Nil) Nil) (Node 7 (Node 6 Nil Nil) Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil))