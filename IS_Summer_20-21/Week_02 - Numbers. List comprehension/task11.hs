main :: IO()
main = do
    print $ isPrime 4
    print $ isPrime 199
    print $ isPrime 181
    print $ isPrime 190
    return()

{-
Explanation:
A prime number has only two divisors 1 and itself.
First, we form the list of all the numbers between 2 and n - 1.
If the n is prime then if we take all the numbers from that list
    and perform modulus division, none should be divisible.
-}

isPrime :: Int -> Bool
isPrime x = if x < 2 then False else length [y | y <- [2 .. x - 1], mod x y == 0] == 0