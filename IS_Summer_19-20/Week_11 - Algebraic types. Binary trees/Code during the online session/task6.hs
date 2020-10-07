main :: IO()
main = do
    print $ areEqual numbersTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil Nil))) -- False
    print $ areEqual charsTree charsTree -- True
    print $ areEqual numbersTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))) -- False
    return ()

------------------------------------------------------------------
data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show)

numbersTree :: (Num a) => BTree a
numbersTree = Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))

charsTree :: BTree Char
charsTree = Node 'k' (Node 'a' (Node 'h' Nil Nil) (Node 's' Nil Nil)) (Node 'l' (Node 'e' Nil Nil) (Node 'l' Nil Nil))
------------------------------------------------------------------



areEqual :: (Eq a) => BTree a -> BTree a -> Bool
areEqual Nil Nil = True
areEqual (Node value1 left1 right1) (Node value2 left2 right2) = if value1 == value2 then areEqual left1 left2 && areEqual right1 right2 else False
areEqual _ _ = False

inorder :: BTree a -> [a]
inorder Nil = []
inorder (Node value left right) = inorder left ++ (value : inorder right)

sumLeaves :: (Num a) => BTree a -> a
sumLeaves Nil = 0
sumLeaves (Node value Nil Nil) = value
sumLeaves (Node _ left right) = sumLeaves left + sumLeaves right

average :: (Fractional a) => BTree a -> a
average tree = sumTree tree / fromIntegral (size tree)

sumTree :: (Num a) => BTree a -> a
sumTree Nil = 0
sumTree (Node value left right) = value + sumTree left + sumTree right

height :: BTree a -> Int
height Nil = 0
height (Node _ left right) = max (1 + height left) (1 + height right)

size :: BTree a -> Int
size Nil = 0
size (Node _ left right) = 1 + size left + size right

{-
Node _ left=(Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) right=(Node 4 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))
 1 + size (Node _ left=(Node 1 (Node 96 Nil Nil) Nil) right=(Node 0 Nil Nil)) + size (Node 4 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))
    1 + size (Node _ left=(Node 96 Nil Nil) right=Nil) + size Nill
        1 + size (Node _ left=Nil right=Nil)
            1
        2
    3
 1 + 3 + size (Node 4 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))
-}