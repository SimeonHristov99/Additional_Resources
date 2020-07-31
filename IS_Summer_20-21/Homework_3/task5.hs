import Data.List

main :: IO()
main = do
    print $ isBinarySearchTree t3 -- True
    print $ isBinarySearchTree t4 -- False
    print $ isBinarySearchTree t5 -- False
    print $ isBinarySearchTree t6 -- False
    return ()

-----------------------------------------------------------------------------------------------------------

data BTree = Empty | Node Int BTree BTree
 deriving (Show)

t3 :: BTree
t3 = Node 8 (Node 3 (Node 1 Empty Empty) (Node 6 (Node 4 Empty Empty) (Node 7 Empty Empty))) (Node 10 Empty (Node 14 (Node 13 Empty Empty) Empty))

t4 :: BTree
t4 = Node 8 (Node 3 (Node 5 Empty Empty) (Node 6 Empty Empty)) (Node 10 Empty (Node 14 Empty Empty))

t5 :: BTree
t5 = Node 8 (Node 3 (Node 2 Empty Empty) (Node 6 Empty Empty)) (Node 10 Empty (Node 1 Empty Empty))

t6 :: BTree
t6 = Node 8 (Node 3 (Node 1 Empty Empty) (Node 4 Empty Empty)) (Node 10 (Node 5 Empty Empty) Empty)

-----------------------------------------------------------------------------------------------------------

isBinarySearchTree :: BTree -> Bool
isBinarySearchTree Empty = True
isBinarySearchTree (Node value left right) = checkValues (<value) left && checkValues (>=value) right
                                            && isBinarySearchTree left && isBinarySearchTree right
 where
     checkValues :: (Int -> Bool) -> BTree -> Bool
     checkValues _ Empty = True
     checkValues predicate (Node value left right)
      | predicate value = checkValues predicate left && checkValues predicate right
      | otherwise = False