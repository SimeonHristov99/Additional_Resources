main :: IO()
main = do
    print $ highest Red colourBTree -- 4
    print $ highest Green colourBTree -- 3
    print $ highest Blue colourBTree -- 4
    return ()

----------------------------------------------------------------------------------------------------------------------------------------------------

data Colour = Red | Green | Blue
 deriving (Show, Eq)

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show)

colourBTree :: BTree Colour
colourBTree = Node Blue (Node Green (Node Blue (Node Red Nil Nil) Nil) (Node Blue Nil Nil)) (Node Red (Node Green (Node Blue Nil Nil) Nil) (Node Red Nil Nil))

----------------------------------------------------------------------------------------------------------------------------------------------------

highest :: Colour -> BTree Colour -> Int
highest _ Nil = -1
highest x (Node y Nil Nil) = if x == y then 1 else 0
highest x (Node y left right) = 1 + max (highest x left) (highest x right)