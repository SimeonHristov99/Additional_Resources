main :: IO()
main = do
    print $ rev 123 == 321
    print $ rev 1001 == 1001

rev :: Int -> Int
rev n = helper n 0
 where
     helper leftover result
      | leftover < 10 = result * 10 + leftover
      | otherwise = helper (div leftover 10) (result * 10 + (mod leftover 10))