main :: IO()
main = do
    print $ findUncles t 1 == []
    print $ findUncles t 3 == []
    print $ findUncles t 9 == [2, 3]
    print $ findUncles t 5 == [3, 4]
    print $ findUncles t 7 == [2, 4]
    print $ findUncles t 10 == [5]

t :: [(Int, [Int])]
t = [(1, [2, 3, 4]), (2, [5, 6]), (3, [7]), (4, [8, 9]), (5, []), (6, [10]), (7, []), (8, []), (9, []), (10, [])]

findUncles :: [(Int, [Int])] -> Int -> [Int]
findUncles graph@((start, succ):xs) node
 | start == node = []
 | elem node succ = []
 | otherwise = helper succ
  where
   helper [] = findUncles xs node
   helper (x:xs)
    | elem node (successors graph x) = [ s | s <- succ, s /= x ]
    | otherwise = helper xs

successors :: [(Int, [Int])] -> Int -> [Int]
successors ((parent, succ):xs) start
 | start == parent = succ
 | otherwise = successors xs start