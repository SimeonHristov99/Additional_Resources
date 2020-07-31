main :: IO()
main = do
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 2, 4] -- True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 3, 4] -- False
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [2, 3] -- True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [3, 1] -- False
    return ()
    
isPath :: [(Int, [Int])] -> [Int] -> Bool
isPath graph (x:xs) = if elem x (nodes graph) == False then False else helper xs x
 where
     helper :: [Int] -> Int -> Bool
     helper [] _ = True
     helper (x:xs) currenFather = elem x (successors graph currenFather) && helper xs x

nodes :: [(Int, [Int])] -> [Int]
nodes graph = [ x | (x, _) <- graph]

successors :: [(Int, [Int])] -> Int -> [Int]
successors [] _ = []
successors (x:xs) n
 | fst x == n = snd x
 | otherwise = successors xs n