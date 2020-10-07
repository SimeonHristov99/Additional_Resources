import Data.List -- has a build-in function filter

main :: IO()
main = do
    print $ removeAll 5 [5] -- []
    print $ removeAll 4 [4, 4] -- []
    print $ removeAll 5 [1] -- [1]
    print $ removeAll 5 [5, 1, 5, 3, 5] -- [1, 3]
    print $ removeAll 3 [5, 1, 5, 3, 5] -- [5, 1, 5, 5]
    print $ removeAll2 5 [5] -- []
    print $ removeAll2 4 [4, 4] -- []
    print $ removeAll2 5 [1] -- [1]
    print $ removeAll2 5 [5, 1, 5, 3, 5] -- [1, 3]
    print $ removeAll2 3 [5, 1, 5, 3, 5] -- [5, 1, 5, 5]
    return ()

-- Solution 1
removeAll :: Int -> [Int] -> [Int]
removeAll number [] = error "Empty list"
removeAll number [l] = if number == l then [] else [l]
removeAll number (l:ls)
 | number == l = removeAll number ls
 | otherwise = l : removeAll number ls

-- Solution 2
removeAll2 el lst = filter (/=el) lst