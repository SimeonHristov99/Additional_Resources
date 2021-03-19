main :: IO()
main = do
    print $ removeFirst 5 [5, 1, 5, 3, 5] == [1, 5, 3, 5]
    print $ removeFirst 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]

removeFirst :: Int -> [Int] -> [Int]
removeFirst _ [] = []
removeFirst d (x:xs)
 | d == x = xs
 | otherwise = x : removeFirst d xs

{-
removeFirst d=3 x = 5 xs=[1, 5, 3, 5]
5 : removeFirst 3 x = 1 xs=[5, 3, 5]
5 : 1 : removeFirst 3 x = 5 xs=[3, 5]
5: 1 : 5 : removeFirst 3 x = 3 xs=[5]
5 : 1 : 5 : [5]
[5, 1, 5, 5]
-}