import Data.List

main :: IO()
main = do
    print $ nodes [(1, 2), (1, 3), (2, 3), (2, 4)] -- [1, 2, 3, 4]
    print $ neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 2 -- [3, 4]
    print $ neighbours [(1, 2), (1, 3), (2, 3), (2, 4)] 4 -- []
    print $ adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] -- [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]
    return ()

nodes :: [(Int, Int)] -> [Int]
nodes xs = nub $ fst k ++ snd k
 where
     k = unzip xs

neighbours :: [(Int, Int)] -> Int -> [Int]
neighbours xs node = [ y | (x, y) <- xs, x == node]

adjacencyList :: [(Int, Int)] -> [(Int, [Int])]
adjacencyList xs = map (\x -> (x, neighbours xs x)) (nodes xs) -- [ (x, neighbours xs x) | x <- nodes xs]