main ::IO()
main = do
    print $ replicate 5 10
    print $ isTriangular [] == True
    print $ isTriangular [[-1]] == True
    print $ isTriangular [[-1, -2, -3], [0, -5, -6], [0, 0, -9]] == True
    print $ isTriangular [[1, 2, 3], [0, 5, 6], [0, 0, 9]] == True
    print $ isTriangular [[0, 2, 3], [0, 0, 6], [1, 0, 0]] == False
    print $ isTriangular [[1, 2, 3], [1, 5, 6], [0, 0, 9]] == False
    print $ isTriangular [[1, 2, 3, 4], [0, 5, 6, 7], [0, 0, 8, 9], [0, 0, 0, 9]] == True

isTriangular :: [[Int]] -> Bool
isTriangular xs = helper xs 0
 where
     helper :: [[Int]] -> Int -> Bool
     helper [] _ = True
     helper (x:xs) i
      | take i x == replicate i 0 = helper xs (i + 1)
      | otherwise = False