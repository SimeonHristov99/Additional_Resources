main :: IO()
main = do
    print (nbDig 10 1)
    print (nbDig 25 1)
    print (nbDig 5750 0)
    print (nbDig 11011 2)
    print (nbDig 12224 8)
    print (nbDig 11549 1)
    return ()

{-
Subproblems:
    - square the numbers
    - filter the ones which have the digit
    - count p in each number
    - sum the counts
-}

nbDig :: Integer -> Integer -> Integer
nbDig n p = sum [countPs z | z <- [y | y <- [x * x | x <- [0 .. n]], hasP y]]
 where
     countPs :: Integer -> Integer
     countPs n
      | n < 10 = if n == p then 1 else 0
      | mod n 10 == p = 1 + countPs (div n 10)
      | otherwise = countPs (div n 10)
     hasP :: Integer -> Bool
     hasP n
      | n < 10 = n == p
      | mod n 10 == p = True
      |otherwise = hasP (div n 10)