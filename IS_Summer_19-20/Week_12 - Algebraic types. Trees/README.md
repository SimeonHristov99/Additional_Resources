# Tasks

## By using the "BTree" data type from last week, complete tasks 1 - 4.

# Task 1
If the root is at level 0, define a function that replaces the values in all nodes with the vector ("level", "value").

Test cases:

    setLevels numberBTree -> Node (0,5) (Node (1,12) (Node (2,1) (Node (3,96) Null Null) Null) (Node (2,0) Null Null)) (Node (1,4) (Node (2,2) Null Null) (Node (2,5) Null (Node (3,21) Null Null)))
    setLevels charBTree -> Node (0,'k') (Node (1,'a') (Node (2,'h') Null Null) (Node (2,'s') Null Null)) (Node (1,'l') (Node (2,'e') Null Null) (Node (2,'l') Null Null))

# Task 2
Define a function that returns the mirror tree.

Test case:

    mirrorTree numberBTree -> Node 5 (Node 4 (Node 5 (Node 21 Null Null) Null) (Node 2 Null Null)) (Node 12 (Node 0 Null Null) (Node 1 Null (Node 96 Null Null)))
    mirrorTree charBTree -> Node 'k' (Node 'l' (Node 'l' Null Null) (Node 'e' Null Null)) (Node 'a' (Node 's' Null Null) (Node 'h' Null Null))
    
# Task 3
Define a function that maps a (one-argument) function to the tree.

Test case:

    mapTree numberBTree (*2) -> Node 10 (Node 24 (Node 2 (Node 192 Null Null) Null) (Node 0 Null Null)) (Node 8 (Node 4 Null Null) (Node 10 Null (Node 42 Null Null)))
    mapTree charBTree (toUpper) -> Node 'K' (Node 'A' (Node 'H' Null Null) (Node 'S' Null Null)) (Node 'L' (Node 'E' Null Null) (Node 'L' Null Null))

# Task 4
Define a function that returns True when every node has the following relationship with its grandfather: "childValue" >= "grandPaValue + 1".

Test case:

    grandchildrenIncreased numberBTree -> False
    grandchildrenIncreased $ Node 5 (Node 12 (Node 6 (Node 96 Nil Nil) Nil) (Node 7 Nil Nil)) (Node 4 (Node 8 Nil Nil) (Node 10 Nil (Node 21 Nil Nil))) -> True

# Task 5
Modify the data type so that it represents an n-ary tree. Define the tree shown in task5.png, print it and define a function that returns its size.

# Task 6
A colour may be either red, green or blue. Create an instance of the tree shown in task6.png. Do the following:

    - print it;
    - define a function that accepts a colour and returns the hight of the highest node of that colour.

Test cases:

    highest Red colourBTree -> 4
    highest Green colourBTree -> 3
    highest Blue colourBTree -> 4

# Task 7
Given a tree made up of whole numbers and represented via an associative list, define a function that returns the number of nodes for which the sum of their children is equal to the node's father (reference tree in task7.png).

Test case:

    numOfNodes [(10,[3,7,12]),(3,[5,8,9]),(7,[11,13]),(12,[6,4]),(8,[1,2])] -> 2 (nodes 12 and 8)