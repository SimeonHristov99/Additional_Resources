main ::IO()
main = do
    print $ biggerThan 5 [1, 2, 3, 6, 8, 7, 9, 4, 1, 2, 5, 10] -- [6, 8, 7, 9, 10]
    return ()

biggerThan :: Int -> [Int] -> [Int]
biggerThan n lst = [y | y <- lst, y > n]