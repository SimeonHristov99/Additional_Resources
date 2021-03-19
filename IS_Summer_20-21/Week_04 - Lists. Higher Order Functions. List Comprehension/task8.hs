import Data.Char

main :: IO()
main = do
    print $ rev 123 == 321
    print $ isPrime 5 == True
    print $ isPrime 6 == False
    print $ isPrime 11 == True
    print $ isPrime 13 == True
    print $ sumDig 142500 == 12
    print $ sumDivs 161 == 192

rev :: Int -> Int
rev n = read $ reverse $ show n

isPrime :: Int -> Bool
isPrime n = n > 1 && all (\ x -> mod n x /= 0) [2 .. n - 1]

sumDig :: Int -> Int
sumDig n = sum $ map digitToInt $ show n

sumDivs :: Int -> Int
sumDivs n = n + (sum $ filter (\ x -> mod n x == 0) [1 .. div n 2 + 1])