main :: IO()
main = do
    --print $ map (\x -> [x]) [1, 2, 3, 4]
    --print $ concatMap (\x -> [x]) [1, 2, 3, 4]
    print $ t
    print $ size t
    print $ sumEq t

data NTree a = Nil | Node a [NTree a]
 deriving (Show)

t :: NTree Int
t = Node 10 [Node 3 [Node 5 [Nil], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]

size :: (Num a) => NTree a -> Int
size Nil = 0
size (Node value successors) = 1 + (sum $ map size successors)

getLevel :: NTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node value successors) k
 | k < 0 = error "Level can't be negative"
 | k == 0 = [value]
 | otherwise = concatMap (\x -> getLevel x (k - 1)) successors