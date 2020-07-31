main :: IO()
main = do
    print $ removeX [5, 6, 4, 5, 6, 3, 6, 5] 5
    print $ removeX [5, 6, 4, 5, 6, 3, 6, 5] 6
    print $ removeX [5, 6, 4, 5, 6, 3, 6, 5] 4
    return()

removeX :: [Int] -> Int -> [Int]
removeX lst number = helper [] lst number
 where
     helper :: [Int] -> [Int] -> Int -> [Int]
     helper newList [] number = newList
     helper newList (a:as) number
      | a == number = helper newList as number
      | otherwise = helper (a : newList) as number