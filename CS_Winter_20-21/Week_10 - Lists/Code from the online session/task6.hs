main :: IO()
main = do
    print $ pack [1, 2, 3, 7, 8, 9] -- == [[1,2,3],[7,8,9]]
    print $ pack [1, 7, 8 ,9] -- == [[1],[7,8,9]]
    print $ pack [1, 9] -- == [[1],[9]]
    print $ packSlower [1, 2, 3, 7, 8, 9] -- == [[1,2,3],[7,8,9]]
    print $ packSlower [1, 7, 8 ,9] -- == [[1],[7,8,9]]
    print $ packSlower [1, 9] -- == [[1],[9]]

pack :: [Int] -> [[Int]]
pack [] = []
pack xs = helper (reverse $ init xs) [[last xs]]
 where
     helper :: [Int] -> [[Int]] -> [[Int]]
     helper [] result = result
     helper (x:xs) (y:ys)
      | (head y) - 1 == x = helper xs ((x : y) : ys)
      | otherwise = helper xs ([x] : (y:ys))

{-
[1, 2, 3, 7, 8 ,9]
helper xs=[8, 7, 3, 2, 1] result=[[9]]
9 - 1 == 8 => [[1, 2, 3], [7, 8, 9]]
-}

packSlower :: [Int] -> [[Int]]
packSlower [] = []
packSlower (x:xs) = reverse $ map reverse $ helper xs [[x]]
 where
     helper :: [Int] -> [[Int]] -> [[Int]]
     helper [] result = result
     helper (x:xs) (y:ys)
      | (head y) + 1 == x = helper xs ((x : y) : ys)
      | otherwise = helper xs ([x] : (y:ys))

{-
[1, 2, 3, 7, 8 ,9]
helper xs=[2, 3, 7, 8, 9] result=[[1]]
1 + 1 == 2 => [3, 7, 8, 9] [[2, 1]]
2 + 1 == 3 => [7, 8, 9] [[3, 2, 1]]
3 + 1 == 7 => [8, 9] [[3, 2, 1], [7]]
[[9, 8, 7], [3, 2, 1]]
-}