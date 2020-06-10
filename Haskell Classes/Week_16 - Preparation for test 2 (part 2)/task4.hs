main :: IO()
main = do
    print $ rangedSum firstTree 100 50 -- 0 (L = 100, R = 50)
    print $ rangedSum firstTree 7 15 -- 32 (L = 7, R = 15)
    print $ rangedSum secondTree 6 10 -- 23 (L = 6, R = 10)
    print $ rangedSum secondTree 10 6 -- 23 (L = 10, R = 6)
    print $ rangedSum firstTree 15 7 -- 32 (L = 15, R = 7)
    return ()

---------------------------------------------------------------------------------------------------

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show, Eq)

firstTree :: BTree Int
firstTree = Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))

secondTree :: BTree Int
secondTree = foldl (insert) Nil [10, 5, 3, 1, 7, 6, 15, 13, 18]

insert :: (Num a, Ord a) => BTree a -> a -> BTree a
insert Nil element = Node element Nil Nil
insert (Node value left right) element
 | element < value = Node value (insert left element) right
 | otherwise = Node value left (insert right element)

---------------------------------------------------------------------------------------------------

rangedSum :: (Num a, Ord a) => BTree a -> a -> a -> a
rangedSum Nil _ _ = 0
rangedSum tree@(Node value left right) leftBound rightBound
 | value >= leftBound && value <= rightBound = value + (rangedSum left leftBound rightBound) + (rangedSum right leftBound rightBound)
 | leftBound >= rightBound = rangedSum tree rightBound leftBound
 | otherwise = (rangedSum left leftBound rightBound) + (rangedSum right leftBound rightBound)