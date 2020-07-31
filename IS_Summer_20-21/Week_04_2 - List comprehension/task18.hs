main :: IO()
main = do
    print $ combine (377802, 989859) -- [(3, 9), (7, 8), (7, 9), (8, 8), (0, 5), (2, 9)]
    print $ combine (12, 21) -- [(1, 2), (1, 2)]
    return ()
    
toList n
 | n < 10 = [n]
 | otherwise = mod n 10 : toList (div n 10)

combine :: (Int, Int) -> [(Int, Int)]
combine (n1, n2) = reverse (helper (toList n1) (toList n2))
 where
     helper :: [Int] -> [Int] -> [(Int, Int)]
     helper [] [] = []
     helper (a:as) (b:bs)
      | a < b = (a, b) : helper as bs
      | otherwise = (b, a) : helper as bs