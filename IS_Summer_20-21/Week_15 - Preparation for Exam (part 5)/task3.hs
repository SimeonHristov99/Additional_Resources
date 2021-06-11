main :: IO()
main = do
    print $ singleCousin tree == [8, 9, 11, 12]

data BTree = Nil | Node Int (BTree) (BTree)

tree :: BTree
tree = Node 1 (Node 2 (Node 4 (Node 8 Nil Nil) (Node 9 Nil Nil)) (Node 5 Nil (Node 10 Nil Nil))) (Node 3 (Node 6 Nil (Node 11 Nil Nil)) (Node 7 Nil (Node 12 Nil Nil)))

getLevel :: BTree -> Int -> [Int]
getLevel Nil _ = []
getLevel (Node value _ _) 0 = [value]
getLevel (Node _ left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)

singleCousin :: BTree -> [Int]
singleCousin (Node value left right)
 | (length $ children left) == 1 && (length $ children right) == 1 = children left ++ children right
 | (length $ children right) == 1 = children left
 | (length $ children left) == 1 = children right
 | otherwise = singleCousin left ++ singleCousin right
  where
   children :: BTree -> [Int]
   children t = getLevel t 1

{-
singleCousin Node 1 (Node 2 (Node 4 (Node 8 Nil Nil) (Node 9 Nil Nil)) (Node 5 Nil (Node 10 Nil Nil))) (Node 3 (Node 6 Nil (Node 11 Nil Nil)) (Node 7 Nil (Node 12 Nil Nil)))
singleCousin Node value=2 left=(Node 4 (Node 8 Nil Nil) (Node 9 Nil Nil)) right=(Node 5 Nil (Node 10 Nil Nil)) ++ singleCousin Node 3 (Node 6 Nil (Node 11 Nil Nil)) (Node 7 Nil (Node 12 Nil Nil))
[8, 9] ++ singleCousin Node value=3 left=(Node 6 Nil (Node 11 Nil Nil)) right=(Node 7 Nil (Node 12 Nil Nil))
[8, 9] ++ children Node 6 Nil (Node 11 Nil Nil) ++ children Node 7 Nil (Node 12 Nil Nil)
[8, 9] ++ [11] ++ [12]
[8, 9, 11, 12]
-}