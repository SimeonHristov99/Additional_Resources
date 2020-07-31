main :: IO()
main = do
    print $ highest Red colourTree
    print $ highest Blue colourTree
    print $ highest Green colourTree
    return ()

data Color = Red | Green | Blue
 deriving (Show, Eq)

data CTree = Nil | Node Color CTree CTree
 deriving (Show)

colourTree :: CTree
colourTree = Node Blue (Node Green (Node Blue (Node Red Nil Nil) Nil) (Node Blue Nil Nil)) (Node Red (Node Green (Node Blue Nil Nil) Nil) (Node Red Nil Nil))

highest :: Color -> CTree -> Int
highest _ Nil = -1
highest x (Node y Nil Nil) = if x == y then 1 else 0
highest x (Node y left right) = 1 + max (highest x left) (highest x right)