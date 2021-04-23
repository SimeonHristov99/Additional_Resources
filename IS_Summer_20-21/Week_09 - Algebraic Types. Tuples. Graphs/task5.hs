import Data.List

main :: IO()
main = do
    -- print $ successors 1 [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 0 1 == [[1]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 1 == [[1, 2], [1, 3]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 2 1 == [[1, 2, 3], [1, 2, 4]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 2 == [[2,3],[2,4]]

type Node = Int
type Graph = [(Node, [Node])]
type Path = [Node]

successors :: Node -> Graph -> [Node]
successors n graph = head [ children | (node, children) <- graph, node == n ]

listOfPaths :: Graph -> Node -> [Path]
listOfPaths graph node
 | k == [] = [[node]]
 | otherwise = map (node:) (concatMap (\ node -> listOfPaths graph node) k) -- x : buy name amount xs
 where
     k = successors node graph

simplePaths :: Graph -> Int -> Node -> [Path]
simplePaths graph@((x, y):xs) k node
 | x == node = nub $ filter (\ xs -> length xs == k + 1) $ map (take (k + 1)) (listOfPaths graph node)
 | otherwise = simplePaths xs k node

-- node -- [1, 2, 3, 4]
-- successors :: Node -> Graph -> [Node]
-- successors n ((node, children):xs)
--  | node == n = children
--  | otherwise = successors n xs