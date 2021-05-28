main :: IO()
main = do
    print $ listOfIndexes 3 [1,2,3,4,3,5,3,2,1] == [2,4,6]
    print $ listOfIndexes 4 [1, 2, 3, 2, 1, 2, 3, 2, 1] == []

listOfIndexes :: Int -> [Int] -> [Int]
listOfIndexes n xs = [ b | (a, b) <- zip xs [0 .. ], a == n ]

listOfIndexes2 :: Int -> [Int] -> [Int]
listOfIndexes2 n xs = map (\ (x, y) -> y) $ filter (\ (x, y) -> n == x) $ zip xs [0 ..]