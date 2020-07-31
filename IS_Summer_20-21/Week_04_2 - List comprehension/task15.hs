main :: IO()
main = do
    print $ subLists [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 2 -- [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]
    print $ subLists [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 4 -- [[1,2,3,4],[5,6,7,8],[9,10]]
    return ()

subLists :: [Int] -> Int -> [[Int]]
subLists [] _ = []
subLists [a] _ = [[a]]
subLists lst k = [take k lst] ++ subLists (drop k lst) k