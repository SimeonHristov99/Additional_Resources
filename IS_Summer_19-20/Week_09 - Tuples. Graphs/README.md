# Tasks

## By using the database created in week 8, complete tasks 1 - 4.

# Task 1
Define a function that takes a quantity and returns all products not available in larger quantities. Solve the task with one line of code.

Test case:

    getNeeded 750 -> [("cheese",750,5.0),("water",500,0.5),("soap",250,4.5)]

# Task 2
Define a function that takes the name and price of a product and returns the number of cheaper alternatives. Solve the task with one line of code.

# Task 3
Define a function that simulates the result of buying a product. The function takes the name and quantity of the desired product. It then checks the database for that product. If the quantity desired is equal to the one available the product is removed from the shop. Otherwise, its amount is reduced. Make sure it is in the database and has sufficient quantity!

Test cases:

    "Initial:"
    db -> [("bread",1000,1.2),("water",500,0.5),("soap",250,4.5)]
    "Buying 500 bread:"
    buy "bread" 500 db -> [("bread",500,1.2),("water",500,0.5),("soap",250,4.5)]
    "Buying 500 water:"
    buy "water" 500 $ buy "bread" 500 db -> [("bread",500,1.2),("soap",250,4.5)]
    "Buying 100 soap:"
    buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -> [("bread",500,1.2),("soap",150,4.5)]
    "Buying 500 bread:"
    buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -> [("soap",150,4.5)]
    buy "water" 100 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -> Should give an error.
    buy "soap" 200 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -> Should give an error.

# Task 4
Define a function that returns the products priced closest to the average price of all the products. Solve the task with linear time complexity.

Test case:

    closestToAverage -> ["milk","soap"]

# Task 5
Given a directed graph "g" (with edges (1, 2), (1, 3), (2, 3), (2, 4)) define the following functions:

    nodes - returns all the nodes of "g";
    neighbours - accepts a node and returns its children (neighbours);
    adjacencyList - returns the children of every parent.

Test cases:

    nodes [(1, 2), (1, 3), (2, 3), (2, 4)] -> [1, 2, 3, 4]
    neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 2 -> [3, 4]
    neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 4 -> []
    adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] -> [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]

# Task 6
Define a function that checks whether a given path is valid in a graph g = (1, [2, 3]), (2, [3, 4]), (3, []), (4, []).

Test cases:

    isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 2, 4] -> True
    isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 3, 4] -> False
    isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [2, 3] -> True
    isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [3, 1] -> False