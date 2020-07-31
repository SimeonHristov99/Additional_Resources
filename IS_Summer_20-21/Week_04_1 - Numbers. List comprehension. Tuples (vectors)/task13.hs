main :: IO()
main = do
    print $ removeFirst 5 [5, 1, 5, 3, 5] -- [1, 5, 3, 5]
    print $ removeFirst 3 [5, 1, 5, 3, 5] -- [5, 1, 5, 5]
    return ()

removeFirst :: Int -> [Int] -> [Int]
removeFirst number [] = error "Empty list"
removeFirst number (l:ls)
 | number == l = ls
 | otherwise = l : removeFirst number ls