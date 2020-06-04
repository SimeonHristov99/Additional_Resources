main :: IO()
main = do
    print $ genWords t1 -- ["acf","acd","abe","cf","cd","f","d","be","e"]
    print $ genWords t2 -- ["acd","ab","cd","d","b"]
    print $ genWords t3 -- ["abdh","abdi","abe","acf","acg","bdh","bdi","be","dh","di","h","i","e","cf","cg","f","g"]
    return ()

------------------------------------------------------------------------------------------

data BTree a = Empty | Node a (BTree a) (BTree a)
 deriving (Show)

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Empty Empty) (Node 'd' Empty Empty)) (Node 'b' Empty (Node 'e' Empty Empty))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Empty Empty) Empty) (Node 'b' Empty Empty)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Empty Empty) (Node 'i' Empty Empty)) (Node 'e' Empty Empty)) (Node 'c' (Node 'f' Empty Empty) (Node 'g' Empty Empty)) 

------------------------------------------------------------------------------------------

containsWord :: (Eq a) => BTree a -> [a] -> Bool
containsWord Empty _ = False
containsWord _ [] = error "A word must contain at least one character"
containsWord (Node value left right) (x:xs)
 | value == x = helper left xs || helper right xs
 | otherwise = containsWord left (x:xs) || containsWord right (x:xs)
 
helper :: (Eq a) => BTree a -> [a] -> Bool
helper Empty [] = True
helper (Node value left right) (x:xs)
 | value == x = helper left xs || helper right xs
 | otherwise = False
helper _ _ = False

genWords :: (Eq a) => BTree a -> [[a]]
genWords Empty = []
genWords (Node value Empty Empty) = [[value]]
genWords tree@(Node value left right) = filter (containsWord tree) $ map (value:) (genWords left)
                                                                        ++ map (value:) (genWords right)
                                                                        ++ genWords left
                                                                        ++ genWords right