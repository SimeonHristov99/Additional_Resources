main :: IO()
main = do
    print $ concatenate [1, 2, 3] [5, 8, 9] -- [1, 2, 3, 5, 8, 9]
    print $ concatenate [1] [5, 8, 9] -- [1, 5, 8, 9]
    print $ concatenate [1, 2, 3] [5] -- [1, 2, 3, 5]
    return ()

concatenate :: [Int] -> [Int] -> [Int]
concatenate [] lst = lst
concatenate lst [] = lst
concatenate (a:as) lst = a : concatenate as lst