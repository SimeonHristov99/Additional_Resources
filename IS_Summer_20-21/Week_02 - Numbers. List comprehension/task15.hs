main :: IO()
main = do
    print $ allBetween 5 7
    print $ allBetweenAlter 5 7
    return()

allBetween :: Integer -> Integer -> [Integer]
allBetween a b
 | a == b = [b]
 | otherwise = a : allBetween (a + 1) b

allBetweenAlter :: Integer -> Integer -> [Integer]
allBetweenAlter a b = [a .. b]