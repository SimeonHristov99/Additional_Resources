import Data.List

main :: IO()
main = do
    print $ concatMap (\ x -> [x, x * 2]) [1, 2, 3]
    print $ nodes [(1, 2), (1, 3), (2, 3), (2, 4)] == [1, 2, 3, 4]
    print $ neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 2 == [3, 4]
    print $ neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 4 == []
    print $ adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] == [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]

nodes :: [(Int, Int)] -> [Int]
nodes xs = nub $ concatMap (\ (x, y) -> [x, y]) xs

neighbours :: [(Int, Int)] -> Int -> [Int]
neighbours xs node = [ y | (x, y) <- xs, x == node]

adjacencyList :: [(Int, Int)] -> [(Int, [Int])]
adjacencyList xs = map (\x -> (x, neighbours xs x)) (nodes xs) -- [ (x, neighbours xs x) | x <- nodes xs]