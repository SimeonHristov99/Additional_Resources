main :: IO()
main = do
    print $ subList 5 10 [1, 2, 3, 4, 5, 6, 7, 10, 2, 3, 6, 5] -- [6, 7, 10, 2, 3, 6]
    print $ subList 1 5 [1, 2, 3, 4, 5, 6, 7, 10, 2, 3, 6, 5] -- [2, 3, 4, 5, 6]
    print $ subList 10 12 [1, 2] -- []
    return ()

subList :: Int -> Int -> [Int] -> [Int]
subList start finish lst = take (finish - start + 1) $ drop start lst