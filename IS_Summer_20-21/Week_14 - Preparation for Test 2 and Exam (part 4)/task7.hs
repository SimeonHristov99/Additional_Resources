main :: IO()
main = do
    print $ height t3
    print $ deepestLeavesSum t3 == 15
    print $ deepestLeavesSum t4 == 4

data BTree = Empty | Node Int BTree BTree

t3 :: BTree
t3 = Node 1 (Node 2 (Node 4 (Node 7 Empty Empty) Empty) (Node 5 Empty Empty)) (Node 3 Empty (Node 6 Empty (Node 8 Empty Empty)))

t4 :: BTree
t4 = Node 1 (Node 2 (Node 4 Empty Empty) Empty) (Node 3 Empty Empty)

deepestLeavesSum :: BTree -> Int
deepestLeavesSum t = sum $ getLevel t (height t)

height :: BTree -> Int
height Empty = 0
height (Node value left right) = 1 + max (height left) (height right)

getLevel :: BTree -> Int -> [Int]
getLevel Empty _ = []
getLevel (Node value _ _) 1 = [value]
getLevel (Node value left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)
