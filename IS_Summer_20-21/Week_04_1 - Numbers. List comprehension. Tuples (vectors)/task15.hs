main :: IO()
main = do
    print $ incrementBy 5 [5] -- [10]
    print $ incrementBy 4 [4, 4] -- [8, 8]
    print $ incrementBy 5 [1] -- [6]
    print $ incrementBy 5 [5, 1, 5, 3, 5] -- [10, 6, 10, 8, 10]
    print $ incrementBy 3 [5, 1, 5, 3, 5] -- [8, 4, 8, 6, 8]
    print $ incrementBy2 5 [5] -- [10]
    print $ incrementBy2 4 [4, 4] -- [8, 8]
    print $ incrementBy2 5 [1] -- [6]
    print $ incrementBy2 5 [5, 1, 5, 3, 5] -- [10, 6, 10, 8, 10]
    print $ incrementBy2 3 [5, 1, 5, 3, 5] -- [8, 4, 8, 6, 8]
    return ()

-- Solution 1
incrementBy :: Int -> [Int] -> [Int]
incrementBy number lst = [number + x | x <- lst]

-- Solution 2
incrementBy2 number lst = map (+number) lst