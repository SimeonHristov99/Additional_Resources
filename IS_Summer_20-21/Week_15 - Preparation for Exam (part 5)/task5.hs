import Data.List

main :: IO()
main = do
    print $ mapTree t1 (\ (x, y) -> y - x)
    print $ ordered t1 == True
    print $ ordered t2 == False

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show)

t1 :: (Num a) => BTree (a, a)
t1 = Node (3, 10) (Node (5, 8) (Node (6, 7) Nil Nil) (Node (4, 9) Nil Nil)) (Node (2, 12) Nil (Node (1, 15) Nil Nil))

t2 = Node (3, 10) (Node (5, 8) (Node (6, 7) Nil Nil) (Node (7, 9) Nil Nil)) (Node (2, 12) Nil (Node (1, 5) Nil Nil))

ordered :: (Num a, Ord a) => BTree (a, a) -> Bool
ordered t = isBinarySearchTree $ mapTree t (\ (x, y) -> y - x)

mapTree :: (Num b) => BTree a -> (a -> b) -> BTree b
mapTree Nil _ = Nil
mapTree (Node value left right) f = Node (f value) (mapTree left f) (mapTree right f)

traverseDFS :: (Eq a) => BTree a -> [a]
traverseDFS Nil = []
traverseDFS (Node value left right) = traverseDFS left ++ [value] ++ traverseDFS right

isBinarySearchTree :: (Ord a) => BTree a -> Bool
isBinarySearchTree t = traversedDfs == (sort $ traversedDfs)
 where
     traversedDfs = traverseDFS t