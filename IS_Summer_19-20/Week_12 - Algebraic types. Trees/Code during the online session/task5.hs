main :: IO()
main = do
    print $ size numberTree
    return ()

data NTree a = Nil | Node a [NTree a]
 deriving (Show)

numberTree :: NTree Int
numberTree = Node 5 [Node 12 [Node 1 [Nil], Node 96 [Nil], Node 0 [Nil]], Node 5 [Nil], Node 4 [Node 2 [Nil], Node 21 [Nil]]]

size :: (Num a) => NTree a -> Int
size Nil = 0
size (Node _ successors) = 1 + (sum $ map size successors)