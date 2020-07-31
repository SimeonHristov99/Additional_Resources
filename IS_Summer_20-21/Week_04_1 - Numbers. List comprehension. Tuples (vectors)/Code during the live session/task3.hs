main :: IO()
main = do
    print $ maxD 536 -- 6
    print $ maxD 836 -- 8
    print $ maxD 181 -- 1
    return ()

maxD :: Int -> Int
maxD number
 | number < 10 = number
 | otherwise = helper (div number 10) (mod number 10)
  where
      helper :: Int -> Int -> Int
      helper leftOver currentMax
       | leftOver < 10 = if leftOver > currentMax then leftOver else currentMax
       | mod leftOver 10 > currentMax = helper (div leftOver 10) (mod leftOver 10)
       | otherwise = helper (div leftOver 10) currentMax