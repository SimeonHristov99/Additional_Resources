main :: IO()
main = do
    print $ toBinaryIndexed tree -- Node (10,5) (Node (5,2) (Node (3,1) (Node (1,0) Nil Nil) Nil) (Node (7,4) (Node (6,3) Nil Nil) Nil)) (Node (15,7) (Node (13,6) Nil Nil) (Node (18,8) Nil Nil))
    return ()

---------------------------------------------------------------------------------------------------

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show, Eq)

tree :: BTree Int
tree = foldl (insert) Nil [10, 5, 3, 1, 7, 6, 15, 13, 18]

insert :: (Num a, Ord a) => BTree a -> a -> BTree a
insert Nil element = Node element Nil Nil
insert (Node value left right) element
 | element < value = Node value (insert left element) right
 | otherwise = Node value left (insert right element)

---------------------------------------------------------------------------------------------------

onlyNodes Nil = []
onlyNodes (Node value left right) = onlyNodes left ++ [value] ++ onlyNodes right 

toBinaryIndexed Nil = Nil
toBinaryIndexed tree = helper (zip (onlyNodes tree) [0 ..]) tree
 where
     helper _ Nil = Nil
     helper xs (Node value left right) = Node (value, head [ idx | (el, idx) <- xs, el == value]) (helper xs left) (helper xs right)