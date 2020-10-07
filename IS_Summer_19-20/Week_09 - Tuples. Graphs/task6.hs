main :: IO()
main = do
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 2, 4] -- True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 3, 4] -- False
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [2, 3] -- True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [3, 1] -- False
    return ()

isPath :: [(Int, [Int])] -> [Int] -> Bool
isPath graph (x:xs) = if not (elem x (nodes graph)) then False else helper xs x
 where
     helper :: [Int] -> Int -> Bool
     helper [] _ = True
     helper (x:xs) currentFather = elem x (successors graph currentFather) && helper xs x

nodes xs = [ x | (x, _) <- xs]

successors [] _ = []
successors ((father, children):ys) x
 | father == x = children
 | otherwise = successors ys x