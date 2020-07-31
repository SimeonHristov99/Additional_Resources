main :: IO()
main = do
    print $ sumPrimes 1 10 -- 129
    print $ sumPrimes 100 10 -- 1216
    return ()

isPrime n = if n < 2 then False else length [ x | x <- [2 .. n - 1], mod n x == 0] == 0

sumPrimes :: Int -> Int -> Int
sumPrimes _ 0 = 0
sumPrimes n k
 | isPrime n = n + sumPrimes (n + 1) (k - 1)
 | otherwise = sumPrimes (n + 1) k