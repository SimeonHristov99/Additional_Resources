main :: IO()
main = do
    print $ isImage [] [] == True
    print $ isImage [1, 2, 3] [2, 3, 4] == True
    print $ isImage [1, 2, 3] [2, 5, 4] == False
    print $ isImage [1, 2, 3] [2, 5] == False

isImage :: [Int] -> [Int] -> Bool
isImage xs ys = length xs == length ys
                && [ x + ((head ys) - (head xs))| x <- xs] == ys