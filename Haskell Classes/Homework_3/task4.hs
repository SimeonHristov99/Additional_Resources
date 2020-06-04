main :: IO()
main = do
    print $ getNumber 
    --print $ isGraceful t1 -- True
    --print $ isGraceful t2 -- False
    return ()

----------------------------------------------------------------------
data NTree = Nil | Node Int [NTree]
 deriving (Show)

t1 :: NTree
t1 = Node 1 [Node 3 [Nil], Node 5 [Nil], Node 7 [Nil], Node 9 [Nil]]

t2 :: NTree
t2 = Node 7 [Node 9 [Node 5 [Nil], Node 2 [Nil]]]
----------------------------------------------------------------------
{-
isGraceful Nil = True
isGraceful (Node value [Nil]) = True
isGraceful (Node value successors) = null (filter (\(Node x child) -> mod (abs(value - x)) 2 /= 0) successors)
                                        && foldr1 (&&) (map isGraceful successors) == True
-}

getNumber [] = []
getNumber ((Node value []):left) = [value]
getNumber ((Node value nodes):left) = value : map getNumber