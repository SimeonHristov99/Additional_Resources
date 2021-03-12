main :: IO()
main = do
    print $ isPrime 1 == False
    print $ isPrime 2 == True
    print $ isPrime 3 == True
    print $ isPrime 6 == False
    print $ isPrime 61 == True

-- sqrt n

-- 2 .. n - 1 => True

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n
 | n < 1 = error "n was not natural"
 | otherwise = helper 2
  where
      helper :: Int -> Bool
      helper currentDivisor
       | currentDivisor == n = True
       | mod n currentDivisor == 0 = False
       | otherwise = helper (currentDivisor + 1)