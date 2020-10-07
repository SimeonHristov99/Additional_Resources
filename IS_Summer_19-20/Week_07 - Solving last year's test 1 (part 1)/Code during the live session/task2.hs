main :: IO()
main = do
    print $ sumPrimes 1 10 -- 129
    print $ sumPrimes 100 10 -- 1216
    return ()

isPrime x = if x < 2 then False else length [ y | y <- [2 .. x - 1], mod x y == 0] == 0

sumPrimes :: Int -> Int -> Int
sumPrimes n k = sum $ helper n k []
 where
     helper :: Int -> Int -> [Int] -> [Int]
     helper _ 0 result = result
     helper n k result
      | isPrime n = helper (n + 1) (k - 1) (n : result)
      | otherwise = helper (n + 1) k result

{-
sumPrimes 1 10
> sum $ helper n = 1 k = 10 result = []
> helper 2 10 []
> helper 3 9 [2]
> helper 4 8 [3, 2]

-}

{-
n is prime only when it doesn't have divisors in the range 2 .. n - 1
length [x | x <- [2 .. n - 1], mod n x == 0] == 0
-}