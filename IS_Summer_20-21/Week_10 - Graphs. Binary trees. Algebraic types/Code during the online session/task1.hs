import Data.List

main :: IO()
main = do
    --print $ successors [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 -- [2, 3]
    --print $ listPaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 0 1 -- [[1]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 1 -- [[1, 2], [1, 3]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 2 1 -- [[1, 2, 3], [1, 2, 4]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 2 -- [[2,3],[2,4]]
    return ()

-- Make the graph type.
type Node = Int
type Graph = [(Node, [Node])]
type Path = [Node]

successors :: Graph -> Node -> [Node]
successors [] node = error "Node is not present!"
successors ((father, children):xs) node
 | node == father = children
 | otherwise = successors xs node

listPaths :: Graph -> Node -> [Path]
listPaths graph node
 | null k = [[node]]
 | otherwise = map (\xs -> node:xs) (concatMap (\x -> listPaths graph x) k)
  where
      k = successors graph node

simplePaths :: Graph -> Int -> Node -> [Path]
simplePaths graph@((x, y):xs) k node
 | x == node = nub $ filter (\xs -> length xs == (k+1)) (map (\xs -> take (k + 1) xs) (listPaths graph node))
 | otherwise = simplePaths xs k node

--simplePaths [(1, [2, 4]), (2, [3, 4]), (3, []), (4, [])] 2 1 => [[1]]

{-
listPaths graph=[(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] node=1
[[2, 3], [2, 4]] map (\xs -> node:xs) (concatMap (\x -> listPaths graph x) [4])

listPaths graph=[(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] node=1
map (\xs -> [[1, 2, 3], [1, 2, 4]] 1:xs) [[2, 3], [2, 4]] => [[1, 2, 3], [1, 2, 4], [1, 3]]
    Return [[2, 3], [2, 4]]

listPaths graph=[(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] node=2
    Return [[2, 3], [2, 4]]

listPaths graph=[(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 3
    Return [[3]]

listPaths graph=[(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 4
    Return [[4]]


listPaths graph=[(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] node=3
[[3]] => map (\[3] -> [[1, 3]])

-}

{-
listPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1
 map (\xs -> node:xs) map (listPaths) (successors node)
 map 1: [2, 3]
 map 2: [3, 4]
    [[1], [1, 2, 3], [1, 2, 4], [1, 3]]
    [[1], [1, 2, 3], [1, 2, 4], [1, 3]]
-}