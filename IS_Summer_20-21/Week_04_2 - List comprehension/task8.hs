main :: IO()
main = do
    print $ toList 258963 -- [2, 5, 8, 9, 6, 3]
    return ()

toList :: Int -> [Int]
toList n = helper [] n
 where
     helper :: [Int] -> Int -> [Int]
     helper newList n
      | n < 10 = n : newList
      | otherwise = helper (mod n 10 : newList) (div n 10)