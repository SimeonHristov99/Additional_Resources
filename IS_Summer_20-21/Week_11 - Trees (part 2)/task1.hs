main :: IO()
main = do
    print $ t
    print $ size t == 13
    print $ getLevel t 2 == [5, 8, 9, 11, 13, 6, 4]
    -- print $ [[5], [8], [9], [11], [13]]

data NTree a = Nil | Node a [NTree a]
    deriving(Show)

t :: (Num a) => NTree a
t = Node 10 [Node 3 [Node 5 [Nil], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]

size :: NTree a -> Int
size Nil = 0
size (Node v succ) = 1 + sum (map (\ x -> size x) succ)

getLevel :: NTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node v succ) k
 | k == 0 = [v] -- v : []
 | otherwise = concatMap (\ x -> getLevel x (k - 1)) succ