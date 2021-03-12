main :: IO()
main = do
    print $ calculateSum 5 0 == 1
    print $ calculateSum 5 1 == 6
    print $ calculateSum 10 1 == 11
    print $ calculateSum 1 11 == 12
    print $ calculateSum 2 11 == 4095

{-
1. What is the name of the function? calculateSum
2. How many arguments does it take? 2
3. What is the data type of the arguments? Double, 
4. What is the return type? 
5. What are the names of the arguments? x n
6. When should an error be returned? 
7. List the steps that would solve the problem.
-}
calculateSum :: Double -> Double -> Double
calculateSum _ 0 = 1
calculateSum x n = helper n 1
 where
     helper :: Double -> Double -> Double
     helper 1 result = result + x
     helper leftOver result = helper (leftOver - 1) (result + x**leftOver)

{-
calculateSum :: Double -> Double -> Double
calculateSum _ 0 = 1
calculateSum x n = helper n 1
 where
    --  helper :: Double -> Double -> Double
     helper 1 result = result + x
     helper (-1) result = result + x
     helper leftOver result = if leftOver < 0
                                then helper (leftOver + 1) (result + x**leftOver)
                                else helper (leftOver - 1) (result + x**leftOver)
-}