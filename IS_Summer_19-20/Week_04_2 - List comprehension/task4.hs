main :: IO()
main = do
    print $ removeFirst [5, 2, 3] -- [2, 3]
    print $ removeFirst [5] -- []
    return ()

removeFirst :: [Int] -> [Int]
removeFirst [] = error "List is empty"
removeFirst (a:as) = as -- Alternatively: removeFirst lst = tail lst