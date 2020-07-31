main :: IO()
main = do
    print $ convert tree -- (Node 30 (Node 36 (Node 36 Nil Nil) (Node 35 Nil (Node 33 Nil Nil))) (Node 21 (Node 26 Nil Nil) (Node 15 Nil (Node 8 Nil Nil))))
    return ()

---------------------------------------------------------------------------------------------------

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show, Eq)
 
tree = foldl (insert) Nil [4, 1, 0, 2, 3, 6, 5, 7, 8]

insert :: (Num a, Ord a) => BTree a -> a -> BTree a
insert Nil element = Node element Nil Nil
insert (Node value left right) element
 | element < value = Node value (insert left element) right
 | otherwise = Node value left (insert right element)

---------------------------------------------------------------------------------------------------

onlyNodes :: BTree a -> [a]
onlyNodes Nil = []
onlyNodes (Node value left right) = (value : onlyNodes left) ++ onlyNodes right

convert :: BTree Int -> BTree Int
convert Nil = Nil
convert tree = helper tree
 where
     helper :: BTree Int -> BTree Int
     helper Nil = Nil
     helper (Node v l r) = Node (sum $ filter (>= v) (onlyNodes tree)) (helper l) (helper r)