import Data.List

main :: IO()
main = do
    print $ isBinarySearchTree t1 == True
    print $ isBinarySearchTree t2 == False
    print $ isBinarySearchTree t3 == False
    print $ isBinarySearchTree t4 == False

-----------------------------------------------------------------------------------------------------------

data BTree = Nil | Node Int BTree BTree
 deriving (Show)

t1 :: BTree
t1 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 6 (Node 4 Nil Nil) (Node 7 Nil Nil))) (Node 10 Nil (Node 14 (Node 13 Nil Nil) Nil))

t2 :: BTree
t2 = Node 8 (Node 3 (Node 5 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 14 Nil Nil))

t3 :: BTree
t3 = Node 8 (Node 3 (Node 2 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 1 Nil Nil))

t4 :: BTree
t4 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 4 Nil Nil)) (Node 10 (Node 5 Nil Nil) Nil)

-----------------------------------------------------------------------------------------------------------

traverseDFS :: BTree -> [Int]
traverseDFS Nil = []
traverseDFS (Node value left right) = traverseDFS left ++ [value] ++ traverseDFS right

isBinarySearchTree :: BTree -> Bool
isBinarySearchTree t = traversedDfs == (sort $ traversedDfs)
 where
     traversedDfs = traverseDFS t