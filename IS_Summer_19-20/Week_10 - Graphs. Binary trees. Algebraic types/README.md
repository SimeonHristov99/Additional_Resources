# Tasks

# ( ! ! ) Task 1 ( ! ! )
Define a function that accepts a graph, a whole number "k" and a node "n". Return all the paths starting from "n" that are "k" nodes long. Create types to represent the nodes, graph and path. Don't forget to validate the node!

Test cases:

    simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 0 1 -> [[1]]
    simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 1 -> [[1, 2], [1, 3]]
    simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 2 1 -> [[1, 2, 3], [1, 2, 4]]
    simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 2 -> [[2,3],[2,4]]

Note:

    Path ::= acyclic connection between nodes ending with a node that has no outgoing connections.

# Task 2
Let (x, y, z) be a vector representing the nodes of a binary tree such that x is the value of the current node, y and z are the values of the child nodes. Define a function that returns the leaves of such a tree.

Test cases:
    
    listLeaves [(1, 2, 3), (2, 4, 5)] -> [4, 3, 5]
    listLeaves [(2, 4, 5), (1, 2, 3)] -> [4, 5, 3]
    listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] -> [2, 4, 6, 9]

# Task 3
Define a new data type called "Shape". Shape must have four constructors:
 - Circle: with one argument representing the radius;
 - Rectangle: with two arguments representing the width and height;
 - Triangle;
 - Cylinder with two arguments for the radius of the base and height.

Create a shape from every type and output it.

# Task 4
Define a function that accepts two functions: "f" and "g" and a list of points with two coordinates. The function should return those points for which f(firstCoordinate) = g(secondCoordinate) and should be able to work with whole as well as floating point numbers!

Test case:

    myImages (\x -> x * x) (\x -> x + 2) [Point 2 2, Point 1 2, Point 3 7] -> [Point 2 2, Point 3 7]

# Task 5
By using the "Shape" data type, define the following functions:

    perimeter;
    area;
    isRound - returns whether a shape has a round side;
    is2D - returns whether a shape has two dimensions.

Test cases:

    perimeter $ Circle 5 -> 31.42
    perimeter $ Rectangle 2.5 4.5 -> 14
    perimeter $ Rectangle 5.5 20.6 -> 52.2
    perimeter $ Triangle 5.3 3.9 4.89 -> 14.09
    perimeter $ Cylinder 2.5 10 -> 30   

    area $ Circle 5 -> 78.54
    area $ Rectangle 2.5 4.5 -> 11.25
    area $ Rectangle 5.5 20.6 -> 113.3
    area $ Triangle 5.3 3.9 4.89 -> 9.128
    area $ Cylinder 20 30 -> 6283.19   

    isRound $ Circle 5 -> True
    isRound $ Rectangle 2.5 4.5 -> False
    isRound $ Rectangle 5.5 20.6 -> False
    isRound $ Triangle 5.3 3.9 4.89 -> False
    isRound $ Cylinder 20 30 -> True

    is2D $ Circle 5 -> True
    is2D $ Rectangle 2.5 4.5 -> True
    is2D $ Rectangle 5.5 20.6 -> True
    is2D $ Triangle 5.3 3.9 4.89 -> True
    is2D $ Cylinder 20 30 -> False

Note:

    Perimeter of a cylinder: 4*r + 2*h
    Area of a cylinder: 2*pi*r*h + 2*pi*r*r.

# Task 6
By using the "Shape" data type, define two functions that accept a list of shapes and:

    1. The first returns their areas;
    2. The second returns the shapes with the biggest areas.

Test cases:

    getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] -> [78.54, 11.25, 113.3, 9.128, 6283.19]
    maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] -> [Cylinder 20.0 30.0]