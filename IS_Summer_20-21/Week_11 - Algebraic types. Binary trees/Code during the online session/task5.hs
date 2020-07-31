main :: IO()
main = do
    print $ numbersTree
    print $ charsTree
    return ()

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show)


numbersTree :: (Num a) => BTree a
numbersTree = Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))

charsTree :: BTree Char
charsTree = Node 'k' (Node 'a' (Node 'h' Nil Nil) (Node 's' Nil Nil)) (Node 'l' (Node 'e' Nil Nil) (Node 'l' Nil Nil))










-- Algorithm for creating a tree
-- 1. Create all the nodes.
-- 2. Combine them bottom -> top.