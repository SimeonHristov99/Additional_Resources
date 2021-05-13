main :: IO()
main = do
    print $ insert numberBTree 13 == (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil)))

    print $ (numberBTree == numberTreeAfter) == True

    print $ secondNumberTree == Node 10 (Node 5 (Node 3 (Node 1 Nil Nil) Nil) (Node 7 (Node 6 Nil Nil) Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil))

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show, Eq)

numberBTree :: (Num a) => BTree a
numberBTree = Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))

insert :: (Ord a) => BTree a -> a -> BTree a
insert Nil element = Node element Nil Nil
insert (Node value left right) element
 | element >= value = Node value left (insert right element)
 | otherwise = Node value (insert left element) right

numberTreeAfter :: (Num a, Ord a) => BTree a
numberTreeAfter = foldl insert Nil [10, 5, 3, 7, 15, 18]

{-
insert (insert (Node 10 Nil Nil) 5) 3
Node 10 (Node 5 Nil Nil) Nil
-}

secondNumberTree :: (Num a, Ord a) => BTree a
secondNumberTree = foldl insert Nil [10, 5, 3, 1, 7, 6, 15, 13, 18]
