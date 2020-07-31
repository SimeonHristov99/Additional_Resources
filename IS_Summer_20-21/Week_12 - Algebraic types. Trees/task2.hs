main :: IO()
main = do
    print $ mirrorTree numberBTree -- Node 5 (Node 4 (Node 5 (Node 21 Null Null) Null) (Node 2 Null Null)) (Node 12 (Node 0 Null Null) (Node 1 Null (Node 96 Null Null)))
    print $ mirrorTree charBTree -- Node 'k' (Node 'l' (Node 'l' Null Null) (Node 'e' Null Null)) (Node 'a' (Node 's' Null Null) (Node 'h' Null Null))
    return ()

----------------------------------------------------------------------------------------------------------------------------------------------------

data BTree a = Null | Node a (BTree a) (BTree a)
 deriving (Show)

numberBTree :: (Num a) => BTree a
numberBTree = Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 4 (Node 2 Null Null) (Node 5 Null (Node 21 Null Null)))

charBTree :: BTree Char
charBTree = Node 'k' (Node 'a' (Node 'h' Null Null) (Node 's' Null Null)) (Node 'l' (Node 'e' Null Null) (Node 'l' Null Null))

----------------------------------------------------------------------------------------------------------------------------------------------------

mirrorTree :: BTree a -> BTree a
mirrorTree Null = Null
mirrorTree (Node value left right) = Node value (mirrorTree right) (mirrorTree left)