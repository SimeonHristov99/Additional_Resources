# Tasks

# Task 1
Define a new data type called "Point". A point may have two or three dimensions. Create an instance of every type and print it.

## By using the "Point" data type, complete tasks 2 - 4.

# Task 2
Define a function that finds the distance between two points. Make sure the points have equal dimensions!

Test cases:

    distance (TwoD 2 5) (TwoD 6 9) -> 5.66
    distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) -> 16.0

# Task 3
Define a function that accepts a point "p" and a list of points. The function returns the points from the list that are closest to "p".

Test case:

    closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] -> [ThreeD 4.0 5.0 6.0]

# ( ! ! ) Task 4 ( ! ! )
Define a function that accepts a list of points and returns a vector (Double, Point, Point) that represents the closest distance between any two points, and the points themselves.

Test case:

    getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] -> (2.8284271247461903,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)

# Task 5
Define a recursive algebraic type called "BTree". A BTree may hold a user-chosen type in its nodes. Create the instances given in task5_1.png and task5_2.png and print them.

## By using the "BTree" data type, complete tasks below.

# Task 6
Define the following functions:

    ​​size - returns the number of nodes;
    ​​height;​
    sumTree - returns the sum of the nodes;​
    average - returns the average of the nodes;
    ​​sumLeaves​ - returns the sum of the leaves;
    inorder​ - returns the nodes in the following order: left branch, root, right branch;
    areEqual - checks whether two trees are identical.

Test cases:

    size numberBTree -> 9
    size charBTree -> 7
    height numberBTree -> 4
    height charBTree -> 3
    sumTree numberBTree -> 146
    sumTree charBTree -> should not work
    average numberBTree -> 16.22
    average charBTree -> should not work
    sumLeaves numberBTree -> 119
    sumLeaves charBTree -> shouldn't work
    inorder numberBTree -> [96, 1, 12, 0, 5, 2, 4, 5, 21]
    inorder charBTree -> "haskell"
    areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 4 (Node 2 Null Null) (Node 5 Null Null))) -> False
    areEqual charBTree charBTree -> True
    areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 8 (Node 2 Null Null) (Node 5 Null (Node 21 Null Null)))) -> False
    
Notes:

    Height of a tree ::= the number of nodes that make up the highest branch.
    sumTree, sumLeaves, average should work only for trees that store numbers in their nodes.

# Task 7
If the root is at level 0, define a function that accepts a whole number k and returns the nodes at level k.

Test cases:

    getLevel numberBTree 2 -> [1, 0, 2, 5]
    getLevel charBTree 1 -> "al"
    getLevel charBTree 3 -> should not work

# Trees used:
data BTree a = Null | Node a (BTree a) (BTree a)
 deriving (Show)

numberBTree :: (Num a) => BTree a
numberBTree = Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 4 (Node 2 Null Null) (Node 5 Null (Node 21 Null Null)))

charBTree :: BTree Char
charBTree = Node 'k' (Node 'a' (Node 'h' Null Null) (Node 's' Null Null)) (Node 'l' (Node 'e' Null Null) (Node 'l' Null Null))