main :: IO()
main = do
    print $ size numberBTree -- 9
    print $ size charBTree -- 7
    
    print $ height numberBTree -- 4
    print $ height charBTree -- 3
    
    print $ sumTree numberBTree -- 146
    print $ sumTree charBTree -- should not work
    
    print $ average numberBTree -- 16.22
    print $ average charBTree -- should not work
    
    print $ sumLeaves numberBTree -- 119
    print $ sumLeaves charBTree -- shouldn't work
    
    print $ inorder numberBTree -- [96, 1, 12, 0, 5, 2, 4, 5, 21]
    print $ inorder charBTree -- "haskell"
    
    print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 4 (Node 2 Null Null) (Node 5 Null Null))) -- False
    print $ areEqual charBTree charBTree -- True
    print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 8 (Node 2 Null Null) (Node 5 Null (Node 21 Null Null)))) -- False
    
    return ()

----------------------------------------------------------------------------------------------------------------------------------------------------

data BTree a = Null | Node a (BTree a) (BTree a)
 deriving (Show)

numberBTree :: (Num a) => BTree a
numberBTree = Node 5 (Node 12 (Node 1 (Node 96 Null Null) Null) (Node 0 Null Null)) (Node 4 (Node 2 Null Null) (Node 5 Null (Node 21 Null Null)))

charBTree :: BTree Char
charBTree = Node 'k' (Node 'a' (Node 'h' Null Null) (Node 's' Null Null)) (Node 'l' (Node 'e' Null Null) (Node 'l' Null Null))

----------------------------------------------------------------------------------------------------------------------------------------------------

areEqual :: (Eq a) => BTree a -> BTree a -> Bool
areEqual Null Null = True
areEqual (Node valueLhs leftLhs rightLhs) (Node valueRhs leftRhs rightRhs) = if valueLhs == valueRhs then areEqual leftLhs leftRhs && areEqual rightLhs rightRhs else False
areEqual _ _ = False

inorder :: BTree a -> [a]
inorder Null = []
inorder (Node value left right) = inorder left ++ (value : inorder right)

sumLeaves :: (Num a) => BTree a -> a
sumLeaves Null = 0
sumLeaves (Node value Null Null) = value
sumLeaves (Node _ left right) = (sumLeaves left) + (sumLeaves right)

average :: (Integral a) => BTree a -> Double
average t = fromIntegral (round (fromIntegral (sumTree t) / fromIntegral (size t) * 100.0)) / 100.0

sumTree :: (Num a) => BTree a -> a
sumTree Null = 0
sumTree (Node value left right) = value + sumTree left + sumTree right

height :: BTree a -> Int
height Null = 0
height (Node _ left right) = max (1 + height left) (1 + height right)

size :: BTree a -> Int
size Null = 0
size (Node _ left right) = 1 + (size left) + (size right)