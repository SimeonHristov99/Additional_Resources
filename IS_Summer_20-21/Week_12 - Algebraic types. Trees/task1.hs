main :: IO()
main = do
    print $ setLevels numberBTree -- Node (0,5) (Node (1,12) (Node (2,1) (Node (3,96) Null Null) Null) (Node (2,0) Null Null)) (Node (1,4) (Node (2,2) Null Null) (Node (2,5) Null (Node (3,21) Null Null)))
    print $ setLevels charBTree -- Node (0,'k') (Node (1,'a') (Node (2,'h') Null Null) (Node (2,'s') Null Null)) (Node (1,'l') (Node (2,'e') Null Null) (Node (2,'l') Null Null))
    return ()

----------------------------------------------------------------------------------------------------------------------------------------------------

data BTree a = Null | Node a (BTree a) (BTree a)
 deriving (Show)

numberBTree :: (Num a) => BTree a
numberBTree = Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 4 (Node 2 Null Null) (Node 5 Null (Node 21 Null Null)))

charBTree :: BTree Char
charBTree = Node 'k' (Node 'a' (Node 'h' Null Null) (Node 's' Null Null)) (Node 'l' (Node 'e' Null Null) (Node 'l' Null Null))

----------------------------------------------------------------------------------------------------------------------------------------------------

setLevels :: BTree a -> BTree (Int, a)
setLevels btree = helper btree 0
 where
     helper :: BTree a -> Int -> BTree (Int, a)
     helper Null _ = Null
     helper (Node value left right) currentLevel = Node (currentLevel, value) (helper left (currentLevel+1)) (helper right (currentLevel+1))