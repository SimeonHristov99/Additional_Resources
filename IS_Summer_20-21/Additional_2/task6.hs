main :: IO()
main = do
    print $ maxDepthBlueNode colorTree == 3

data Color = Red | Green | Blue

data Tree = Empty | Node Color Tree Tree

colorTree :: Tree
colorTree = Node Blue (Node Red (Node Green Empty Empty) Empty)
                      (Node Red (Node Blue (Node Green Empty Empty)
                                           (Node Red Empty Empty))
                                Empty)

maxDepthBlueNode :: Tree ->Int
maxDepthBlueNode tree  = helper tree 0
 where
  helper Empty                  acc = 0
  helper (Node Blue left right) acc = max (acc + 1) (max (helper left (acc + 1)) (helper right (acc + 1)))
  helper (Node _    left right) acc = max (helper left (acc + 1)) (helper right (acc + 1))

{-
maxDepthBlueNode :: Tree -> Int
maxDepthBlueNode Empty = -1
maxDepthBlueNode (Node Blue lt rt) = max 0 (1 + max (maxDepthBlueNode lt) (maxDepthBlueNode rt))
maxDepthBlueNode (Node _ lt rt) = 1 + max (maxDepthBlueNode lt) (maxDepthBlueNode rt)
-}