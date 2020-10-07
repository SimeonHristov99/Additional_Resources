main :: IO()
main = do
    print $ (numberTreeBefore == numberTreeAfter) == True
    print $ insert numberTreeBefore 13 == (Node 10 (Node 5 (Node 3 Empty Empty) (Node 7 Empty Empty)) (Node 15 (Node 13 Empty Empty) (Node 18 Empty Empty)))
    print $ secondNumberTree == Node 10 (Node 5 (Node 3 (Node 1 Empty Empty) Empty) (Node 7 (Node 6 Empty Empty) Empty)) (Node 15 (Node 13 Empty Empty) (Node 18 Empty Empty))
    return ()

-----------------------------------------------------------------------------------------------------------------------------

data BTree a = Empty | Node a (BTree a) (BTree a)
 deriving (Show, Eq)

numberTreeBefore :: BTree Int
numberTreeBefore = Node 10 (Node 5 (Node 3 Empty Empty) (Node 7 Empty Empty)) (Node 15 Empty (Node 18 Empty Empty))

numberTreeAfter :: BTree Int
numberTreeAfter = foldl (insert) Empty [10, 5, 3, 7, 15, 18]

secondNumberTree :: BTree Int
secondNumberTree = foldl (insert) Empty [10, 5, 3, 1, 7, 6, 15, 13, 18]

{-
foldl (insert) Empty [10, 5, 3, 1, 7, 6, 15, 13, 18]
> insert Empty 10
> insert (insert Empty 10) 5
> insert (insert (insert Empty 10) 5) 3
-}

{-
foldl (+) 0 [1, 2, 3, 4]
> (((0 + 1) + 2) + 3)

foldl (insert) Empty [10, 5, 3, 7, 15, 18]
> (insert Empty 10)
> (insert (insert Empty 10) 5)
> insert (insert (insert (insert (insert (insert Empty 10) 5) 3) 7) 15) 18

foldr (-) 0 [1, 2, 3]
> 1 - (2 - (3 - 0))

foldr1 (*) [1, 2, 3]
> 1 * (2 * 3)

foldr (/) 1 [1, 2, 3]
> 3 / 0

foldl1 (+) [1, 2, 3]
> insert 1 2
-}

-----------------------------------------------------------------------------------------------------------------------------

insert :: (Ord a) => BTree a -> a -> BTree a
insert Empty element = Node element Empty Empty
insert (Node value left right) element
 | element > value = Node value left (insert right element)
 | otherwise = Node value (insert left element) right