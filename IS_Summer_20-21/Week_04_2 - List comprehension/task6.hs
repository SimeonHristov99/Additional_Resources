main :: IO()
main = do
    print $ formLst 5 [1, 2, 3, 4, 5, 6] -- [1, 2, 3, 4, 5]
    print $ formLst 5 [1, 2, 3] -- [1, 2, 3]
    return ()

formLst :: Int -> [Int] -> [Int]
formLst k lst = take k $ reverse lst