main :: IO()
main = do
    print $ sumPrimeDivisors 100
    return ()

sumPrimeDivisors :: Integer -> Integer
sumPrimeDivisors n = sum [x | x <- [2 .. n], mod n x == 0, isPrime x]
 where
     isPrime x = length [n | n <- [2 .. x - 1], mod x n == 0] == 0