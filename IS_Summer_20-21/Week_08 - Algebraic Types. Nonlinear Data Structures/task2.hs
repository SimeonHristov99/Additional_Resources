main :: IO()
main = do
    print $ nodes [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 2, 4] == True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 3, 4] == False
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [2, 3] == True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [3, 1] == False

type Graph = [(Int, [Int])]

isPath :: Graph -> [Int] -> Bool
isPath _ [] = False
isPath graph (x:xs) = elem x (nodes graph) && helper xs x
 where
     helper :: [Int] -> Int -> Bool
     helper [] _ = True
     helper (x:xs) currentParent = elem x (successors graph currentParent) && helper xs x

successors :: Graph -> Int -> [Int]
successors [] _ = error "element not present"
successors ((parent, succ):xs) start
 | start == parent = succ
 | otherwise = successors xs start

nodes :: Graph -> [Int]
nodes graph = [ start | (start, _) <- graph]