main :: IO()
main = do
    print $ sumTuple (4, 5) -- 9
    print $ sumTuple (-5, 5) -- 0
    return ()

sumTuple :: (Int, Int) -> Int
sumTuple (a, b) = a + b