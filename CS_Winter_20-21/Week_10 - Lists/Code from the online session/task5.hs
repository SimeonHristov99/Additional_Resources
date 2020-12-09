import Data.Char

main :: IO()
main = do
    print $ sumSpecialPrimes 5 2 == 392
    print $ sumSpecialPrimes 5 3 == 107
    print $ sumSpecialPrimes 10 3 == 462

isPrime :: Int -> Bool
isPrime n = if n < 2 then False else all (\ i -> mod n i /= 0) [2 .. n - 1]

toXs :: Int -> [Int]
toXs n = map digitToInt $ show n

sumSpecialPrimes :: Int -> Int -> Int
sumSpecialPrimes n d = sum $ take n [ x | x <- [1 .. ], isPrime x, elem d $ toXs x]