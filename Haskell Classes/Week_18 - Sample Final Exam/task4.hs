main :: IO()
main = do
    print $ levelSum numberBTree 1
    --print $ cone numberBTree
    return ()

data BTree a = Nil | Node a (BTree a) (BTree a)

numberBTree :: BTree Int
numberBTree = Node 10 (Node 5 (Node 1 Nil Nil) (Node 9 Nil Nil)) (Node 6 (Node 8 Nil Nil) (Node 7 Nil Nil))

levelSum :: (Num a) => BTree a -> Int -> a
levelSum Nil _ = error "Empty tree"
levelSum (Node value left right) k
 | k == 0 = value
 | k > 0 = levelSum left (k-1) + levelSum right (k-1)
 | otherwise = error "k is too large"