main :: IO()
main = do
    print $ isSquare 0 -- True
    print $ isSquare 1 -- True
    print $ isSquare 2 -- False
    print $ isSquare 4 -- True
    print $ isSquare 17 -- False
    print $ isSquare 256 -- True
    print $ isSquare 2500 -- True
    return ()

isSquare :: Int -> Bool
isSquare n = length [x | x <- [0 .. n], x * x == n] == 1