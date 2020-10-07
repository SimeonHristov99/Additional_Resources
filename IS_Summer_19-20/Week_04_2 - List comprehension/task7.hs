main :: IO()
main = do
    print $ formList 5 [1, 2, 3, 4, 5, 6] -- [6]
    print $ formList 5 [1, 2, 3] -- []
    print $ formLst2 5 [1, 2, 3, 4, 5, 6] -- [6]
    print $ formLst2 5 [1, 2, 3] -- []
    return ()

formList :: Int -> [Int] -> [Int]
formList 1 (a:as) = as
formList _ [] = []
formList n (a:as) = formList (n - 1) as

formLst2 n lst = drop n lst