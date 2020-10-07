main :: IO()
main = do
    print $ grandchildrenIncreased numberBTree -- False
    print $ grandchildrenIncreased $ Node 5 (Node 12 (Node 6 (Node 96 Nil Nil) Nil) (Node 7 Nil Nil)) (Node 4 (Node 8 Nil Nil) (Node 10 Nil (Node 21 Nil Nil)))
    return ()

----------------------------------------------------------------------------------------------------------------------------------------------------

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show)

numberBTree :: (Num a) => BTree a
numberBTree = Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))

----------------------------------------------------------------------------------------------------------------------------------------------------

grandchildrenIncreased :: (Num a, Ord a) => BTree a -> Bool
grandchildrenIncreased Nil = True
grandchildrenIncreased tree@(Node grandfather left right)
 | hasGrandchildren tree = length (filter (\x -> x >= grandfather + 1) $ getLevel tree 2) /= 0 && grandchildrenIncreased left && grandchildrenIncreased right
 | otherwise = True

-- We need to make sure that the node has grandchildren. We could use pattern matching but it would not be readable.
hasGrandchildren :: BTree a -> Bool
hasGrandchildren Nil = False
hasGrandchildren tree = length (getLevel tree 2) /= 0

getLevel :: BTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node value left right) k
 | k < 0 = error "Level can't be negative!"
 | k == 0 = [value]
 | otherwise = (getLevel left (k-1)) ++ (getLevel right (k-1))