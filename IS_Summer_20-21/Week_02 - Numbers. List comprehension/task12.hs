main :: IO()
main = do
    print $ isPerfect 6
    print $ isPerfect 7
    print $ isPerfect 8128
    print $ isPerfect 28
    return()

isPerfect :: Integer -> Bool
isPerfect n = n == sum [x | x <- [1 .. n-1], mod n x == 0]