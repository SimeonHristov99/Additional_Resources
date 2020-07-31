main :: IO()
main = do
    print $ deepestLeavesSum Empty == 0
    print $ deepestLeavesSum t1 == 15
    print $ deepestLeavesSum t2 == 4

data BTree = Empty | Node Int BTree BTree

deepestLeavesSum :: BTree -> Int
deepestLeavesSum tree = sum $ getLevelK tree $ getDepth tree

getDepth :: BTree -> Int
getDepth Empty = 0
getDepth (Node value left right) = 1 + max (getDepth left) (getDepth right)

getLevelK :: BTree -> Int -> [Int]
getLevelK Empty _ = []
getLevelK (Node value left right) k
 | k == 1 = [value]
 | k < 1 = error "Negative level"
 | otherwise = getLevelK left (k - 1) ++ getLevelK right (k - 1)

t1 :: BTree
t1 = Node 1 (Node 2 (Node 4 (Node 7 Empty Empty) Empty) (Node 5 Empty Empty)) (Node 3 Empty (Node 6 Empty (Node 8 Empty Empty)))

t2 :: BTree
t2 = Node 1 (Node 2 (Node 4 Empty Empty) Empty) (Node 3 Empty Empty)