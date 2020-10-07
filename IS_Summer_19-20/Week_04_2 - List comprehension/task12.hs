main :: IO()
main = do
    print $ toTuples [1, 2, 3, 4] [4, 3, 2, 1] -- [(1, 4), (2, 3), (3, 2), (4, 1)]
    print $ toTuples [1, 2] [] -- [(1, 0), (2, 0)]
    return ()

toTuples :: [Int] -> [Int] -> [(Int, Int)]
toTuples [] [] = []
toTuples (a:as) [] = (a, 0) : toTuples as []
toTuples [] (a:as) = (0, a) : toTuples [] as
toTuples (a:as) (b:bs) = (a, b) : toTuples as bs