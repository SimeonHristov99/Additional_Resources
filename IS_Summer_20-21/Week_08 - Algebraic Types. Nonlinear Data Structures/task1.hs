import Data.List

main :: IO()
main = do
    -- print $ concatMap (\x -> [x, x * 2]) [1, 2, 3]
    -- print $ unzip [(1, 2), (3, 4)]
    print $ nodes [(1, 2), (1, 3), (2, 3), (2, 4)] == [1, 2, 3, 4]
    print $ neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 2 == [3, 4]
    print $ neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 4 == []
    print $ adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] == [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]

adjacencyList :: [(Int, Int)] -> [(Int, [Int])]
adjacencyList graph = [ (start, neighbours graph start) | start <- nodes graph]

neighbours :: [(Int, Int)] -> Int -> [Int]
neighbours graph start = [ n2 | (n1, n2) <- graph, n1 == start]

nodes :: [(Int, Int)] -> [Int]
nodes = nub . concatMap (\ (x, y) -> [x, y])

-- nodes :: [(Int, Int)] -> [Int]
-- nodes xs = helper $ unzip xs
--  where
--      helper :: ([Int], [Int]) -> [Int]
--      helper (xs, ys) = nub $ xs ++ ys -- concat 