main :: IO()
main = do
    print $ minDepthGreenNode colorTree == 3

data Color = Red | Green | Blue          -- цвят
 deriving (Read, Show, Eq)

data Tree = Empty | Node Color Tree Tree -- двоично дърво от тип Color

colorTree :: Tree
colorTree = Node Blue (Node Red (Node Green Empty Empty) Empty)
                      (Node Red (Node Blue (Node Green Empty Empty)
                                           (Node Red Empty Empty))
                                Empty)

minDepthGreenNode :: Tree -> Int
minDepthGreenNode Empty                 = 1
minDepthGreenNode (Node Green left right) = 1
minDepthGreenNode (Node _     left right) = 1 + min (minDepthGreenNode left) (minDepthGreenNode right)