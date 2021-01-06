# Task 1
Define a recursive algebraic type called "BTree". A BTree may hold a user-chosen type in its nodes. Create the following instances and print them:

numberBTree:

![Alt text](pictures/task1_1.png?raw=true "task1_1.png")

charBTree:

![Alt text](pictures/task1_2.png?raw=true "task1_2.png")

Define the following functions:

    ​​size - returns the number of nodes;
    sumTree - returns the sum of the nodes (should work only for trees that store numbers in their nodes);​
    traverseDFS​ - prints the nodes using DFS;
    getLevel - accepts a whole number k and returns the nodes at level k (root is at level 0);
    traverseBFS - prints the nodes using BFS;
    mapTree - maps an unary function to the tree.

Test cases:

    print $ numberBTree
    print $ charBTree

    print $ size numberBTree == 9
    print $ size charBTree == 7

    print $ sumTree numberBTree == 146
    -- print $ sumTree charBTree -- should not work

    print $ traverseDFS numberBTree == [96, 1, 12, 0, 5, 2, 4, 5, 21]
    print $ traverseDFS charBTree == "haskell"

    print $ getLevel numberBTree 2 == [1, 0, 2, 5]
    print $ getLevel charBTree 1 == "al"
    -- print $ getLevel charBTree 3 -- should not work
    
    print $ traverseBFS numberBTree == [5,12,4,1,0,2,5,96,21]
    print $ traverseBFS charBTree == "kalhsel"

    print $ mapTree numberBTree (*2) == Node 10 (Node 24 (Node 2 (Node 192 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 4 Nil Nil) (Node 10 Nil (Node 42 Nil Nil)))
    print $ mapTree charBTree (toUpper) == Node 'K' (Node 'A' (Node 'H' Nil Nil) (Node 'S' Nil Nil)) (Node 'L' (Node 'E' Nil Nil) (Node 'L' Nil Nil))

# Task 2
A product has a name, quantity (in grams/milliliters) and a price (in lv). A shop has products, thus we can use it as a database.

Available products in the shop:

    - Bread: 1kg for 1.20;
    - Milk: 2L for 4.50;
    - Lamb: 5kg for 10.00;
    - Cheese: 750g for 5.00;
    - Butter: 1kg for 5.50;
    - Water: 500ml for 0.50;
    - Soap: 250g for 4.50.

Your tasks are:

    - Create and print the database;
    - Define a function that:
        - returns the price of the inventory;
        - simulates the result of buying a product. The function takes the name and quantity of the desired product. It then checks the database for that product. If the quantity desired is equal to the one available the product is removed from the shop. Otherwise, its amount is reduced.

Test cases:

    print $ db
    print $ getTotal db == 31.2
    print $ "Buying 500 bread:"
    print $ buy "bread" 500 db
    print $ "Buying 500 water:"
    print $ buy "water" 500 (buy "bread" 500 db)
    print $ "Buying 100 soap:"
    print $ buy "soap" 100 (buy "water" 500 (buy "bread" 500 db))
    print $ "Buying 500 bread:"
    print $ buy "bread" 500 (buy "soap" 100 (buy "water" 500 (buy "bread" 500 db)))
    --print $ buy "water" 100 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- Should give an error.
    --print $ buy "soap" 200 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- Should give an error.

# Task 3
For the following tree complete the actions below:

![Alt text](pictures/task3.png?raw=true "task3.png")

    - print it;
    - define a function that:
        - returns its size.
        - returns the elements at level k.

Test cases:

    print $ t
    print $ size t == 13

# For home
# Task 1
For the trees in task 1 (that we solved in class) define the following functions:

    ​​height (number of nodes along the longest branch);​
    average - returns the average of the nodes (should work only for trees that store numbers in their nodes);
    ​​sumLeaves​ - returns the sum of the leaves (should work only for trees that store numbers in their nodes);
    areEqual - checks whether two trees are identical;
    setLevels - replaces the values in all nodes with the vector ("level", "value");
    mirrorTree - returns the symmetric tree.

Test cases:

    print $ height numberBTree == 4
    print $ height charBTree == 3

    print $ average numberBTree == 16.22
    --print $ average charBTree -- should not work

    print $ sumLeaves numberBTree == 119
    --print $ sumLeaves charBTree -- shouldn't work

    print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil Nil))) == False
    print $ areEqual charBTree charBTree == True
    print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))) == False
    
    print $ setLevels numberBTree == Node (0,5) (Node (1,12) (Node (2,1) (Node (3,96) Nil Nil) Nil) (Node (2,0) Nil Nil)) (Node (1,4) (Node (2,2) Nil Nil) (Node (2,5) Nil (Node (3,21) Nil Nil)))
    print $ setLevels charBTree == Node (0,'k') (Node (1,'a') (Node (2,'h') Nil Nil) (Node (2,'s') Nil Nil)) (Node (1,'l') (Node (2,'e') Nil Nil) (Node (2,'l') Nil Nil))
    
    print $ mirrorTree numberBTree == Node 5 (Node 4 (Node 5 (Node 21 Nil Nil) Nil) (Node 2 Nil Nil)) (Node 12 (Node 0 Nil Nil) (Node 1 Nil (Node 96 Nil Nil)))
    print $ mirrorTree charBTree == Node 'k' (Node 'l' (Node 'l' Nil Nil) (Node 'e' Nil Nil)) (Node 'a' (Node 's' Nil Nil) (Node 'h' Nil Nil))

# Task 2
For the database in task 2 define a function that:

    - returns the average price of the inventory;
    - takes a quantity and returns all products not available in larger quantities;
    - takes the name and price of a product and returns the number of cheaper alternatives. For the test cases to pass on this point, the database must be db = [("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("lamb", 1000, 5.50), ("water", 500, 0.50), ("lamb", 250, 4.50)];
    - returns the products priced closest to the average price of all the products.

Test cases:

    print $ getAverage == 4.457142857142857

    print $ getNeeded 750 == [("cheese",750,5.0),("water",500,0.5),("soap",250,4.5)]

    --print $ cheapestAlternative "lamb" 5.50 == 1 -- only for the other db
    --print $ cheapestAlternative "lamb" 10 == 2 -- only for the other db

    print $ closestToAverage == ["milk","soap"]

# Task 3
A colour may be either red, green or blue. Create an instance of the following tree and do the following:

![Alt text](pictures/task4.png?raw=true "task4.png")

    - print it;
    - define a function that accepts a colour and returns the hight of the highest node of that colour.

Test cases:

    print $ highest Red colourBTree == 4
    print $ highest Green colourBTree == 3
    print $ highest Blue colourBTree == 4

# Task 4
A tree is gracefull if the absolute difference between a node and its father is an even number. Define a predicate that returns whether a tree is gracefull.

![Alt text](pictures/task5_1.png?raw=true "task5_1.png")
![Alt text](pictures/task5_2.png?raw=true "task5_2.png")

Test cases:

    print $ isGracefull t1 == True -- t1 = A
    print $ isGracefull t2 == True -- t2 = B
    print $ isGracefull t3 == False -- t3 = C

# Task 5
By using the following types define a function that accepts a list of records and returns the hardest subject.

type Student = String<br>
type Subject = String<br>
type Note = Double<br>
type Record = (Student, Subject, Note)

Test case:

    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"

# Task 6
Let (x, y, z) be a vector representing the nodes of a binary tree such that x is the value of the current node, y and z are the values of the child nodes. Define a function that returns the leaves of such a tree.

Test cases:
    
    print $ listLeaves [(1, 2, 3), (2, 4, 5)] == [3, 4, 5]
    print $ listLeaves [(2, 4, 5), (1, 2, 3)] == [4, 5, 3]
    print $ listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] == [2, 4, 6, 9]

# Task 7
Define a function that accepts a list of whole number one-argument functions [f<sub>1</sub>, f<sub>2</sub> .. f<sub>n</sub>] and returns a function that for every "x" calculates the composition of the functions with odd indices: f<sub>1</sub>(f<sub>3</sub>(...(f<sub>n</sub>x)...)).

Test case:

    print $ (getOddCompositionValue [(\x -> x + 1),(\x -> x * 2),(\x -> x - 1), (\x -> div x 2)]) 2 == 2

Note:

    For a "Yes", you must solve the task with one line of code!
    For a "Yes", you must solve the task with folding!

# Task 8
Given an whole number list with no duplicates construct a "maximum binary tree". We say that a binary tree is a "maximum binary tree" if:

    The root is the maximum number in the list.
    The left subtree is the maximum tree constructed from the elements on the left of the of the maximum number.
    The right subtree is the maximum tree constructed from the elements on the right of the maximum number.

Test case:

    print $ constructMaxBTree [3, 2, 1, 6, 0, 5] == t2

    t2:
           6
        /     \
       3       5
       \       /
        2    0
         \
          1

# Task 9
Define a function that accepts an infinite list of numbers [x<sub>1</sub>, x<sub>2</sub> .. ] and returns a function that for every x and y calculates the expression (x - x<sub>1</sub>) * (x - x<sub>2</sub>) * .. * (x - x<sub>y</sub>).

Test case:

    If g is myPoly [2.7, 3.0 ..]
        then g 2.2 3 -> -0.4399999999999998

# Task 10
The nodes in the following picture resemple the lower and higher bounds of an interval (the first number will always be lower than the second). Define a function that checks whether such a binary tree is ordered according to the relation "subinterval".

![Alt text](pictures/task11_1.png?raw=true "task11_1.png")

![Alt text](pictures/task11_2.png?raw=true "task11_2.png")

Test cases:

    print $ ordered t1 == True
    print $ ordered t2 == False