main ::IO()
main = do
    print $ isTriangular [[1, 2, 0], [0, 4, 5], [0, 0, 9]] -- True
    print $ isTriangular [[1, 2, 0], [0, 4, 5], [0, 8, 9]] -- False
    return ()

isTriangular :: [[Int]] -> Bool
isTriangular lst = helper lst 0
 where
     helper :: [[Int]] -> Int -> Bool
     helper [] _ = True
     helper (a:as) iteration
      | take iteration a == replicate iteration 0 = helper as (iteration + 1)
      | otherwise = False