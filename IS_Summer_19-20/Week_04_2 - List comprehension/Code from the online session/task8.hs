main :: IO()
main = do
    print $ join [[1, 2], [5, 6], [9]] -- [1, 2, 5, 6, 9]
    return () 

join :: [[Int]] -> [Int]
join [] = []
join [a] = a
join (a:cs) = a ++ join cs