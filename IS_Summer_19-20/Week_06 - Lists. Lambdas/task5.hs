main :: IO()
main = do
    print $ isArithmentic [3] -- True
    print $ isArithmentic [3, 5] -- True
    print $ isArithmentic [1, 2, 3, 4, 5] -- True
    print $ isArithmentic [3, 5, 7, 9, 11] -- True
    print $ isArithmentic [3, 5, 8, 9, 11] -- False
    return ()

isArithmentic :: [Int] -> Bool
isArithmentic xs = if length xs < 3 then True else helper (y - x) (drop 2 xs)
 where
     x = head xs
     y = head $ tail xs
     helper :: Int -> [Int] -> Bool
     helper _ [a] = True
     helper difference (x:y:ys)
      | y - x /= difference = False
      | otherwise = helper difference ys