main ::IO()
main = do
    print $ numOfNodes t == 2

data NTree a = Nil | Node a [NTree a]
 deriving (Show)

t :: (Num a)=> NTree a
t = Node 10 [Node 3 [Node 5 [Nil], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]

numOfNodes ::(Num a, Eq a)=> NTree a -> Int
numOfNodes Nil = 0
numOfNodes (Node value successors) =(length $ filter (\x -> x == value) $ map (\ x -> sumOfChildren x) successors) + (sum $ map (\x -> numOfNodes x) successors)

sumOfChildren :: Num a => NTree a -> a
sumOfChildren Nil = 0
sumOfChildren tree = sum $ getLevel tree 1

getLevel :: NTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node v successors) k
 | k == 0 = [v]
 | otherwise = concatMap (\ x -> getLevel x (k - 1)) successors