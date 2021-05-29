main :: IO()
main = do
    print $ isBalanced t1 == False
    print $ isBalanced t2 == True

data BTree = Empty | Node Int BTree BTree

t1 :: BTree
t1 = Node 5 Empty (Node 4 (Node 5 Empty Empty) (Node 7 Empty Empty))

t2 :: BTree
t2 = Node 5 (Node 3 Empty Empty) (Node 4 (Node 5 Empty Empty) (Node 7 Empty Empty))

height :: BTree -> Int
height Empty = 0
height (Node _ left right) = 1 + max (height left) (height right)

isBalanced :: BTree -> Bool
isBalanced Empty = True
isBalanced (Node value left right) = (abs $ height left - height right) <= 1
                                        && isBalanced left
                                        && isBalanced right