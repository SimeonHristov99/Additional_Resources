main :: IO()
main = do
    print $ getLevel numberBTree 2 -- [1, 0, 2, 5]
    print $ getLevel charBTree 1 -- "al"
    --print $ getLevel charBTree 3 -- should not work
    return ()

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show)

numberBTree :: (Num a) => BTree a
numberBTree = Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))

charBTree :: BTree Char
charBTree = Node 'k' (Node 'a' (Node 'h' Nil Nil) (Node 's' Nil Nil)) (Node 'l' (Node 'e' Nil Nil) (Node 'l' Nil Nil))


getLevel :: BTree a -> Int -> [a]
getLevel Nil _ = error "Level can't be negative"
getLevel (Node value left right) k
 | k < 0 = error "Level can't be negative"
 | k == 0 = [value]
 | otherwise = getLevel left (k - 1) ++ getLevel right (k - 1)