main :: IO()
main = do
    print $ levelSum numberBTree 1 == 11
    print $ levelSum numberBTree 2 == 25
    print $ cone numberBTree == True

data BTree = Nil | Node Int BTree BTree

numberBTree :: BTree
numberBTree = Node 10 (Node 5 (Node 1 Nil Nil) (Node 9 Nil Nil)) (Node 6 (Node 8 Nil Nil) (Node 7 Nil Nil))

-- 10
-- / \
-- 5 6
-- / \ / \
-- 1 9 8 7

getLevel :: BTree -> Int -> [Int]
getLevel Nil _ = []
getLevel (Node value left right) 0 = [value]
getLevel (Node value left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)

levelSum :: BTree -> Int -> Int
levelSum t k = sum $ getLevel t k

cone :: BTree -> Bool
cone tree = helper 0
 where
  helper :: Int -> Bool
  helper k
   | getLevel tree (k + 1) == [] = True
   | levelSum tree k >= levelSum tree (k + 1) = False
   | otherwise = helper (k + 1)