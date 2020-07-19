main :: IO()
main = do
    print $ levelSum numberBTree 1
    print $ cone numberBTree
    return ()

data BTree a = Nil | Node a (BTree a) (BTree a)

numberBTree :: BTree Int
numberBTree = Node 10 (Node 5 (Node 1 Nil Nil) (Node 9 Nil Nil)) (Node 6 (Node 8 Nil Nil) (Node 7 Nil Nil))

levelSum :: (Num a) => BTree a -> Int -> a
levelSum tree k = sum $ getElementsAtLevel tree k

getElementsAtLevel Nil _ = []
getElementsAtLevel (Node value left right) k
 | k < 0 = error "k was too large"
 | k == 0 = [value]
 | otherwise = getElementsAtLevel left (k - 1) ++ getElementsAtLevel right (k - 1)

cone :: (Num a, Ord a) => BTree a -> Bool
cone tree = helper tree 0
 where
     helper :: (Num a, Ord a) => BTree a -> Int -> Bool
     helper (Node value Nil Nil) _ = True
     helper tree k
      | successors == [] = True
      | otherwise = sum successors > sum (getElementsAtLevel tree k)
       where
           successors = getElementsAtLevel tree (k + 1)