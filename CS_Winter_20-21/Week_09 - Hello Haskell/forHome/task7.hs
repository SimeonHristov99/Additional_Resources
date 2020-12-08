main :: IO()
main = do
    print $ isPrime 1 == False
    print $ isPrime 2 == True
    print $ isPrime 3 == True
    print $ isPrime 6 == False
    print $ isPrime 61 == True
    print $ isPrimeXs 1 == False
    print $ isPrimeXs 2 == True
    print $ isPrimeXs 3 == True
    print $ isPrimeXs 6 == False
    print $ isPrimeXs 61 == True

isPrimeXs n = if n < 2 then False else null $ filter (\ i -> mod n i == 0) [2 .. n - 1]

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = helper 2
 where
     helper i
      | i >= n = True
      | mod n i == 0 = False
      | otherwise = helper (i + 1)