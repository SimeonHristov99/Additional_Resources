main :: IO()
main = do
    print $ countOccurences 121 1
    return()

countOccurences :: Integer -> Integer -> Integer
countOccurences n d
 | n < 10 = if n == d then 1 else 0
 | otherwise = if mod n 10 == d then 1 + countOccurences (div n 10) d else countOccurences (div n 10) d