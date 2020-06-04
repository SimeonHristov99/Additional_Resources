import Data.List

main :: IO()
main = do
    print $ allContain [t1, t2] -- ["acd","cd","d"]
    print $ allContain [t1, t2, t3] -- []
    print $ allContain [t3, t4] -- ["g"]
    return ()

------------------------------------------------------------------------------------------

data BTree = Empty | Node Char BTree BTree
 deriving (Show)

t1 :: BTree
t1 = Node 'a' (Node 'c' (Node 'f' Empty Empty) (Node 'd' Empty Empty)) (Node 'b' Empty (Node 'e' Empty Empty))

t2 :: BTree
t2 = Node 'a' (Node 'c' (Node 'd' Empty Empty) Empty) (Node 'b' Empty Empty)

t3 :: BTree
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Empty Empty) (Node 'i' Empty Empty)) (Node 'e' Empty Empty)) (Node 'c' (Node 'f' Empty Empty) (Node 'g' Empty Empty)) 

t4 :: BTree
t4 = Node 'a' (Node 'c' (Node 'd' Empty Empty) Empty) (Node 'g' Empty Empty)

------------------------------------------------------------------------------------------

allContain :: [BTree] -> [String]
allContain [] = []
allContain xs = foldr1 intersect $ map genWords xs

------------------------------------------------------------------------------- tasks 1, 2

containsWord :: BTree -> [Char] -> Bool
containsWord Empty _ = False
containsWord _ [] = True
containsWord (Node value left right) (x:xs)
 | value == x = helper left xs || helper right xs
 | otherwise = containsWord left (x:xs) || containsWord right (x:xs)
 
helper :: BTree -> [Char] -> Bool
helper Empty [] = True
helper (Node value left right) (x:xs)
 | value == x = helper left xs || helper right xs
 | otherwise = False
helper _ _ = False

genWords :: BTree -> [String]
genWords Empty = []
genWords (Node value Empty Empty) = [[value]]
genWords tree@(Node value left right) = filter (containsWord tree) $ map (value:) (genWords left)
                                                                        ++ map (value:) (genWords right)
                                                                        ++ genWords left
                                                                        ++ genWords right