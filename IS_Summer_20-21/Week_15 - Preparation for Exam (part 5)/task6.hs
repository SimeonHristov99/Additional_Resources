main :: IO()
main = do
    print $ deepestLeavesSum t3 == 15
    print $ deepestLeavesSum t4 == 4

data BTree = Nil | Node Int BTree BTree

t3 :: BTree
t3 = Node 1 (Node 2 (Node 4 (Node 7 Nil Nil) Nil) (Node 5 Nil Nil)) (Node 3 Nil (Node 6 Nil (Node 8 Nil Nil)))

t4 :: BTree
t4 = Node 1 (Node 2 (Node 4 Nil Nil) Nil) (Node 3 Nil Nil)

deepestLeavesSum :: BTree -> Int
deepestLeavesSum t = sum $ getLevel t (height t - 1)

height :: BTree -> Int
height Nil = 0
height (Node _ left right) = 1 + max (height left) (height right)

getLevel :: BTree -> Int -> [Int]
getLevel Nil _ = []
getLevel (Node value _ _) 0 = [value]
getLevel (Node _ left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)
