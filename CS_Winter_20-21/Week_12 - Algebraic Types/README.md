# Task 1
Define a new data type called "Shape". Shape must have four constructors:
 - Circle: with one argument representing the radius;
 - Rectangle: with two arguments representing the width and height;
 - Triangle;
 - Cylinder with two arguments for the radius of the base and height.

Create a shape from every type and output it.

## By using the "Shape" data type, complete tasks 2 and 3.

# Task 2
Define the following functions:

    perimeter;
    area;
    isRound - returns whether a shape has a round side;
    is2D - returns whether a shape has two dimensions.

Test cases:

    print $ perimeter (Circle 5) == 31.41592653589793
    print $ perimeter (Rectangle 2.5 4.5) == 14
    print $ perimeter (Rectangle 5.5 20.6) == 52.2
    print $ perimeter (Triangle 5.3 3.9 4.89) == 14.09
    print $ perimeter (Cylinder 2.5 10) == 30

    print $ area (Circle 5) == 78.53981633974483
    print $ area (Rectangle 2.5 4.5) == 11.25
    print $ area (Rectangle 5.5 20.6) == 113.30000000000001
    print $ area (Triangle 5.3 3.9 4.89) == 9.127927385194024
    print $ area (Cylinder 20 30) == 6283.185307179587  

    print $ isRound (Circle 5) == True
    print $ isRound (Rectangle 2.5 4.5) == False
    print $ isRound (Rectangle 5.5 20.6) == False
    print $ isRound (Triangle 5.3 3.9 4.89) == False
    print $ isRound (Cylinder 20 30) == True

    print $ is2D (Circle 5) == True
    print $ is2D (Rectangle 2.5 4.5) == True
    print $ is2D (Rectangle 5.5 20.6) == True
    print $ is2D (Triangle 5.3 3.9 4.89) == True
    print $ is2D (Cylinder 20 30) == False

Formulas:

    Perimeter of a cylinder: 4 * r + 2 * h.
    Area of a cylinder: 2 * pi * r * h + 2 * pi * r * r.

# Task 3
Define two functions that accept a list of shapes and:

    1. The first returns their areas.
    2. The second returns the shapes with the biggest areas.

Test cases:

    print $ getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == [78.54, 11.25, 113.3, 9.128, 6283.19]
    print $ maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == [Cylinder 20.0 30.0]

# Task 4
Define a new data type called "Point". A point may have two or three dimensions.
    - create an instance of every type and print it.
    - define a function that accepts two functions: "f" and "g" and a list of points with two coordinates. The function should return those points for which f(firstCoordinate) = g(secondCoordinate) and should be able to work with whole as well as floating point numbers!

Test case:

    print $ myImages (\x -> x * x) (2+) [TwoD 2 2, TwoD 1 2, TwoD 3 7] == [TwoD 2 2, TwoD 3 7]

## By using the "Point" data type, complete tasks 5 - 7.

# Task 5
Define a function that finds the distance between two points. Make sure the points have equal dimensions!

Test cases:

    print $ distance (TwoD 2 5) (TwoD 6 9) == 5.66
    print $ distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) == 16.0

# Task 6
Define a function that accepts a point "p" and a list of points. The function returns the points from the list that are closest to "p".

Test case:

    print $ closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == [ThreeD 4.0 5.0 6.0]

# Task 7
Define a function that accepts a list of points and returns a vector (Double, Point, Point) that represents the closest distance between any two points, and the points themselves.

Test case:

    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.8284271247461903,ThreeD 4 5 6,ThreeD 6 5 4)

# Task 8
Define a recursive algebraic type called "BTree". A BTree may hold a user-chosen type in its nodes. Create the following instances and print them:

numberBTree:

![Alt text](task8_1.png?raw=true "task8_1.png")

charBTree:

![Alt text](task8_2.png?raw=true "task8_2.png")

## By using the "BTree" data type, complete tasks below.

# Task 9
Define the following functions:

    ​​size - returns the number of nodes;
    ​​height;​
    sumTree - returns the sum of the nodes;​
    average - returns the average of the nodes;
    ​​sumLeaves​ - returns the sum of the leaves;
    inorder​ - returns the nodes in the following order: left branch, root, right branch;
    areEqual - checks whether two trees are identical.

Test cases:

    print $ size numberBTree == 9
    print $ size charBTree == 7

    print $ height numberBTree == 4
    print $ height charBTree == 3

    print $ sumTree numberBTree == 146

    print $ average numberBTree == 16.22

    print $ sumLeaves numberBTree == 119

    print $ inorder numberBTree == [96, 1, 12, 0, 5, 2, 4, 5, 21]
    print $ inorder charBTree == "haskell"

    print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 4 (Node 2 Null Null) (Node 5 Null Null))) == False
    print $ areEqual charBTree charBTree == True
    print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 8 (Node 2 Null Null) (Node 5 Null (Node 21 Null Null)))) == False
    
    --print $ sumTree charBTree -- should not work
    --print $ average charBTree -- should not work
    --print $ sumLeaves charBTree -- shouldn't work
    
Notes:

    Height of a tree ::= the number of nodes that make up the highest branch.
    sumTree, sumLeaves, average should work only for trees that store numbers in their nodes.

# Task 10
If the root is at level 0, define a function that accepts a whole number k and returns the nodes at level k.

Test cases:

    print $ getLevel numberBTree 2 == [1, 0, 2, 5]
    print $ getLevel charBTree 1 == "al"
    -- print $ getLevel charBTree 3 -- == negative level