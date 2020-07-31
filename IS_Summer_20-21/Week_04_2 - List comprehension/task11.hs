main :: IO()
main = do
    print $ join [[1, 2], [5, 6], [9]] -- [1, 2, 5, 6, 9, 10]
    return ()

join :: [[Int]] -> [Int]
join [a] = a
join (a:b:s) = a ++ b ++ join s