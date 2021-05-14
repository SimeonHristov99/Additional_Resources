main :: IO()
main = do
 print $ isSymmetric Empty == True
 print $ isSymmetric t3 == False
 print $ isSymmetric t4 == True
 print $ isSymmetric t5 == True


t3 :: BTree
t3 = Node 1 (Node 2 Empty Empty) (Node 3 Empty Empty) -- 2 3

t4 :: BTree
t4 = Node 1 (Node 2 (Node 3 Empty Empty) -- / \
        Empty) -- 2 2
        (Node 2 Empty -- / \
        (Node 3 Empty Empty)) -- 3 3

t5 :: BTree 
t5 = Node 1 (Node 2 (Node 3 Empty Empty) -- / \
        (Node 7 (Node 5 Empty Empty) -- 2 2
        Empty)) -- / \ / \
        (Node 2 (Node 7 Empty -- 3 7 7 3
        (Node 5 Empty Empty)) -- / \
        (Node 3 Empty Empty)) -- 5 5

data BTree = Empty | Node Int BTree BTree

isSymmetric:: BTree -> Bool
isSymmetric Empty = True
isSymmetric tree@(Node x btreer btreel) = helper 1
 where
  helper:: Int -> Bool
  helper level
   | getLevel tree level == [] = True
   |otherwise = (reverse $ getLevel tree level) == getLevel tree level && helper (level + 1)

getLevel :: BTree -> Int -> [Int]
getLevel Empty _ = []
getLevel (Node value left right) k
 | k < 0 = []
 | k == 0 = [value]
 | otherwise = getLevel left (k - 1) ++ getLevel right (k - 1)


{-
traverseDFS

main :: IO()
main = do
print $ isSymmetric Nil == True
print $ isSymmetric t3 == False
print $ isSymmetric t4 == True
print $ isSymmetric t5 == True


data BTree = Nil | Node Int (BTree) (BTree)
deriving (Show, Eq)


t3 :: BTree -- 1
t3 = Node 1 (Node 2 Nil Nil) -- / \
(Node 3 Nil Nil) -- 2 3

t4 :: BTree -- 1
t4 = Node 1 (Node 2 (Node 3 Nil Nil) -- / \
Nil) -- 2 2
(Node 2 Nil -- / \
(Node 3 Nil Nil)) -- 3 3

t5 :: BTree -- 1
t5 = Node 1 (Node 2 (Node 3 Nil Nil) -- / \
(Node 7 (Node 5 Nil Nil) -- 2 2
Nil)) -- / \ / \
(Node 2 (Node 7 Nil -- 3 7 7 3
(Node 5 Nil Nil)) -- / \
(Node 3 Nil Nil)) -- 5 5


traverseDFS :: BTree -> [Int]
traverseDFS Nil = []
traverseDFS (Node value left right) = (traverseDFS left) ++ [value] ++ (traverseDFS right)

isSymmetric :: BTree -> Bool
isSymmetric Nil = True
isSymmetric (Node _ Nil Nil) = True
isSymmetric (Node v left right) = (traverseDFS left) == (reverse $ traverseDFS right)
-}