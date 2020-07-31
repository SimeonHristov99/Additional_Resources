import Data.List

main :: IO()
main = do
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 0 1 -- [[1]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 1 -- [[1, 2], [1, 3]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 2 1 -- [[1, 2, 3], [1, 2, 4]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 2 -- [[2,3],[2,4]]
    return ()

type Node = Int
type Graph = [(Node, [Node])]
type Path = [Node]

successors node ((x, y):xs)
 | node == x = y
 | otherwise = successors node xs

listOfPaths :: Graph -> Node -> [Path]
listOfPaths graph node
 | k == [] = [[node]]
 | otherwise = map (node:) (concatMap (listOfPaths graph) k)
  where
      k = successors node graph

simplePaths :: Graph -> Int -> Node -> [Path]
simplePaths [] _ _ = error "Node was not found!"
simplePaths graph@((x, y):xs) k node
 | x == node = nub $ filter (\xs -> length xs == k + 1) $ map (take (k + 1)) (listOfPaths graph node)
 | otherwise = simplePaths xs k node