main :: IO()
main = do
    print $ sumDivs 0 == 0
    print $ sumDivs 1 == 1
    print $ sumDivs 6 == 12 -- 1 + 2 + 3 + 6
    print $ sumDivs 12345 == 19776

-- 1 .. n - 1

{-
1. What is the name of the function? 
2. How many arguments does it take? 
3. What is the data type of the arguments? 
4. What is the return type? 
5. What are the names of the arguments?
6. When should an error be returned? 
7. How would you solve it on a sheet of paper?
-}
sumDivs :: Int -> Int
sumDivs 0 = 0
sumDivs n
 | n < 0 = error "n was negative"
 | otherwise = helper 1
  where
      helper :: Int -> Int
      helper currentDivisor
       | currentDivisor >= n = n -- currentDivisor
       | mod n currentDivisor == 0 = currentDivisor + helper (currentDivisor + 1)
       | otherwise = helper (currentDivisor + 1)