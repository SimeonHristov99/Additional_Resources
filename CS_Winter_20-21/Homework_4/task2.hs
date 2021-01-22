main :: IO()
main = do
    print $ countInteresting t1 == 2
    print $ countInteresting t2 == 3
    print $ countInteresting t3 == 2

data BTree = Empty | Node Int BTree BTree
 deriving (Show)

t1 :: BTree
t1 = Node 16 (Node 0 Empty Empty) (Node 4 (Node 1 Empty Empty) (Node 0 Empty Empty))

t2 :: BTree
t2 = Node 4 (Node 0 Empty Empty) (Node 2 (Node 1 Empty Empty) Empty)

t3 :: BTree
t3 = Node 16 (Node 0 (Node 5 Empty Empty) Empty) (Node 4 (Node 1 Empty Empty) (Node 0 Empty Empty))

getLevel :: BTree -> Int -> [Int]
getLevel Empty _ = []
getLevel (Node value left right) k
 | k < 0 = error "Level can't be negative"
 | k == 0 = [value]
 | otherwise = getLevel left (k - 1) ++ getLevel right (k - 1)

countInteresting :: BTree -> Int
countInteresting Empty = 0
countInteresting t@(Node value left right)
 | value == (product $ replicate numberOfSuccessors 2) = 1 + countInteresting left + countInteresting right
 | otherwise = countInteresting left + countInteresting right
 where
     numberOfSuccessors = length $ getLevel t 1