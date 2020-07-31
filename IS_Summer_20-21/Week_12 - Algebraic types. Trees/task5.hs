main :: IO()
main = do
    print $ numberNTree
    print $ size numberNTree
    return ()

data NTree a = Nil | Node a [NTree a]
 deriving (Show)

numberNTree :: NTree Int
numberNTree = Node 5 [Node 12 [Node 1 [Nil], Node 96 [Nil], Node 0 [Nil]], Node 5 [Nil], Node 4 [Node 2 [Nil], Node 21 [Nil]]]

size :: NTree a -> Int
size Nil = 0
size (Node value successors) = 1 + (sum $ map size successors)