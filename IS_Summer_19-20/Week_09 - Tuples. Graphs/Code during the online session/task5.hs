import Data.List

main :: IO()
main = do
    print $ nodes [(1, 2), (1, 3), (2, 3), (2, 4)] -- [1, 2, 3, 4]
    print $ neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 2 -- [3, 4]
    print $ neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 4 -- []
    print $ adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] -- [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]
    return ()

{-
adjacencyList :: [(Int, Int)] -> [(Int, [Int])]
adjacencyList [] = []
adjacencyList (x:xs) = (fst x, neighbours xs (fst x)) : (adjacencyList xs)
-}

adjacencyList :: [(Int, Int)] -> [(Int, [Int])]
adjacencyList graph = map (\x -> (x, neighbours graph x)) (nodes graph) -- [ (x, neighbours graph x) | x <- nodes graph]

neighbours :: [(Int, Int)] -> Int -> [Int]
neighbours [] n = []
neighbours ((x, y):xs) n
 | x == n = y : neighbours xs n
 | otherwise = neighbours xs n

nodes :: [(Int, Int)] -> [Int]
nodes graph = nub $ helper graph
 where
     helper :: [(Int, Int)] -> [Int]
     helper [] = []
     helper ((x, y):xs) = x : y : helper xs

-- Form a list with only the nodes.
-- Leave only the unique elements.
-- [(1, 2), (1, 3), (2, 3), (2, 4)] -> [1, 2, 1, 3, 2, 3, 2, 4]