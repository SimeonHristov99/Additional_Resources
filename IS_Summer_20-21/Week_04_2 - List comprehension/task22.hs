main ::IO()
main = do
    print $ isImage [1, 2, 3, 4] [2, 3, 4, 5] -- (True, 1)
    print $ isImage [1, 2, 3, 4] [4, 5, 6, 7] -- (True, 3)
    print $ isImage [1, 2, 3, 4] [4, 5, 6, 6] -- (False, 0)
    print $ isImage [1, 2] [-1, -2] -- (False, 0)
    print $ isImage [1, 2, 3, 4] [2, 3, 4, 4] -- (False, 0)
    return ()

isImage :: [Int] -> [Int] -> (Bool, Int)
isImage (a:as) (b:bs)
 | a > b = (False, 0)
 | otherwise = helper as bs (b - a)
  where
      helper :: [Int] -> [Int] -> Int -> (Bool, Int)
      helper [] [] difference = (True, difference)
      helper (a:as) (b:bs) difference
       | b == a + difference = helper as bs difference
       | otherwise = (False, 0)