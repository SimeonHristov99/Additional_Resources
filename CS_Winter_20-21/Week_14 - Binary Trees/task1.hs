main :: IO()
main = do
    print $ insert (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))) 13 == (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil)))

    print $ (numberTreeAfter == numberTreeBefore) == True

    print $ secondNumberTree == Node 10 (Node 5 (Node 3 (Node 1 Nil Nil) Nil) (Node 7 (Node 6 Nil Nil) Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil))

---------------------------------------------------------------------------------------------------

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show, Eq)

numberTreeBefore :: BTree Int
numberTreeBefore = Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))

numberTreeAfter :: BTree Int
numberTreeAfter = foldl insert Nil [10, 5, 3, 7, 15, 18]

secondNumberTree :: BTree Int
secondNumberTree = foldl insert Nil [10, 5, 3, 1, 7, 6, 15, 13, 18]

{-
insert Nil 10 => Node 10 Nil Nil
insert (insert Nil 10) 5
-}

{-
foldr (+) 0 [1, 2, 5]
5 + 0 => 5
2 + 5 => 7
1 + 7 => 8
-}

---------------------------------------------------------------------------------------------------

insert :: (Ord a) => BTree a -> a -> BTree a
insert Nil element = Node element Nil Nil
insert (Node value left right) element
 | element >= value = Node value left (insert right element)
 | otherwise = Node value (insert left element) right

{-
 HW4_Task1:
 What does it mean to define a function on a functional level?
 Where in the github can one find examples?
 Make a function that rounds a number.

 Test2:
 Task 1: numbers
 Task 2: lists (can be solved with one line of code)
 Task 3: vectors (can be solved with one line of code)
 Task 4: Binary Tree
-}

--roundTwoDig :: Double -> Double
--roundTwoDig x = (fromIntegral $ round $ x * 100) / 100