# Task 1
Define a new **polymorphic** algrebraic data type called "Point". A point may have two or three dimensions. Create an instance for every dimension and print it.

## By using the "Point" data type, complete tasks 2 and 3.

# Task 2
Define a function that finds the distance between two points. Make sure the points have equal dimensions!

Implemenation detail:

    Round the result until the second digit after the decimal point.

Test cases:

    print $ distance (TwoD 2 5) (TwoD 6 9) == 5.66
    print $ distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) == 16.03

# Task 3
Define a function that accepts a point *p* and returns the closest point (to *p*) from a list of points.

Implemenation detail:

    Solve the task using folding!

Test case:

    print $ closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == ThreeD 4.0 5.0 6.0

# Task 4
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
    print $ getTotal == 70825.0
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

# For home
# Task 1
Define a function that accepts a one-argument function and a list of numbers [y<sub>1</sub>, y<sub>2</sub> .. y<sub>n</sub>] and returns a function that accepts "x" and calculates the expression: y<sub>1</sub> * f(x) + y<sub>2</sub> * f(x<sup>2</sup>) + .. + y<sub>n</sub> * f(x<sup>n</sup>) .

Test cases:

    print $ (sumExpr (2+) [0, 1, 2, 3]) 2 == 80
    print $ (sumExpr (*0.8) [0, 1, 2, 3, 4, 5]) 10 == 4345680.0

# Task 2
Define a function that accepts a list of countries and returns the name of the coldest country, i.e. the country with the lowest average yearly temperature.

Use the following types:

    type Name = String
    type Capital = Name
    type AvgYearlyTemperature = Double
    type Elevation = Int
    data City = City Name Elevation AvgYearlyTemperature
    data Country = Country Name Capital [City]

Implementation detail:

    !! SOLVE THE TASK USING FOLDING !!

Test cases:

    print $ coldestCapital [(Country "Bulgaria" "Sofia" [(City "Varna" 0 16), (City "Plovdiv" 120 14), (City "Sofia" 420 13)]), (Country "Germany" "Berlin" [(City "Munchen" 200 15), (City "Berlin" 150 12), (City "Ulm" 210 15)]), (Country "France" "Paris" [(City "Paris" 180 15), (City "Nice" 0 14), (City "Lyon" 500 13)])] == "Germany"

# Task 3
Define a function that accepts a list of points and returns a vector (Double, Point, Point) that represents the closest distance between any two points, and the points themselves.

Implementation detail:

    In Data.List there is a helpful function - subsequences. It can help you by returning all possible combinations of two points (6 choose 2). Check it out by using the link in the main page of the repository.

Test case:

    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.8284271247461903,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)

# Task 4
Define a function that returns all the uncles of a node in a tree.

![Alt text](pictures/t.png?raw=true "t.png")

Use the following type and representation:

    type Tree = [(Int, [Int])]

    t :: Tree
    t = [(1,[2,3,4]),(2,[5,6]),(3,[7]),(4,[8,9]),(5,[]),(6,[10]),(7,[]),(8,[]),(9,[]),(10,[])]


Test cases:

    print $ findUncles t 5 == [3,4]
    print $ findUncles t 7 == [2,4]
    print $ findUncles t 10 == [5]
