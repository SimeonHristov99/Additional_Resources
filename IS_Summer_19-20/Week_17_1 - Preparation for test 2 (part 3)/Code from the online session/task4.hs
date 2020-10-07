import Data.List

main :: IO()
main = do
    print $ toBinaryIndexed tree == Node (10,5) (Node (5,2) (Node (3,1) (Node (1,0) Nil Nil) Nil) (Node (7,4) (Node (6,3) Nil Nil) Nil)) (Node (15,7) (Node (13,6) Nil Nil) (Node (18,8) Nil Nil))
    return ()

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show, Eq)

tree = Node 10 (Node 5 (Node 3 (Node 1 Nil Nil) Nil) (Node 7 (Node 6 Nil Nil) Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil))

onlyNodes :: BTree a -> [a]
onlyNodes Nil = []
onlyNodes (Node current left right) = [current] ++ onlyNodes left ++ onlyNodes right

toBinaryIndexed :: (Ord a) => BTree a -> BTree (a, Int)
toBinaryIndexed tree = helper (zip (sort $ onlyNodes tree) [0 ..]) tree
 where
     helper :: (Eq a) => [(a, Int)] -> BTree a -> BTree (a, Int)
     helper _ Nil = Nil
     helper xs (Node current left right) = Node (current, head [ i | (element, i) <- xs, current == element]) (helper xs left) (helper xs right)