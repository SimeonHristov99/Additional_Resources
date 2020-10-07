main :: IO()
main = do
    print $ firstNPrimes 100
    return()

isPrime :: Int -> Bool
isPrime 1 = error "The number 1 is neither prime neither composite!"
isPrime n = helper n 2
 where
     helper :: Int -> Int -> Bool
     helper n currentDivisor
      | currentDivisor >= n = True
      | mod n currentDivisor == 0 = False
      | otherwise = helper n (currentDivisor + 1)

firstNPrimes :: Int -> [Int]
firstNPrimes n = [x | x <- [2 .. n], isPrime x]