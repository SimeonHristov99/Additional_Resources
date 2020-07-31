main :: IO()
main = do
    print $ unEvenPrimes 0 500 -- [7, 17, 37, 47, 67, 97, 107, 127, 137, 157, 167, 197, 227, 257, 277, 307, 317, 337, 347, 367, 397, 457, 467, 487]
    return ()

isPrime :: Int -> Bool
isPrime x = if x < 2 then False else length [y | y <- [2 .. x - 1], mod x y == 0] == 0

unEvenPrimes :: Int -> Int -> [Int]
unEvenPrimes a b = [x | x <- [a .. b], isPrime x, mod x 10 == 7]