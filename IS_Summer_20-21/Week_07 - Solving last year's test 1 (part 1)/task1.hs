main :: IO()
main = do
    print $ listDigits 90 9 -- [9, 19, 29, 39, 49, 59, 69, 79, 89, 90]
    print $ listDigits 100 1 -- [1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 31, 41, 51, 61, 71, 81, 91, 100]
    return ()

listDigits :: Int -> Int -> [Int]
listDigits n m = if m < 0 then error "Invalid input!" else [ x | x <- [1 .. n], hasM x]
 where
     hasM :: Int -> Bool
     hasM x
      | x < 10 = x == m
      | mod x 10 == m = True
      | otherwise = hasM (div x 10)