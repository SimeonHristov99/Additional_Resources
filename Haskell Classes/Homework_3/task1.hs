main :: IO()
main = do
    print $ containsWord t1 "" -- error
    print $ containsWord t1 "acd" -- True
    print $ containsWord t1 "cd" -- True
    print $ containsWord t2 "ab" -- True
    print $ containsWord t3 "bdh" -- True
    print $ containsWord t3 "bdi" -- True
    print $ containsWord t1 "ac" -- False
    print $ containsWord t1 "af" -- False
    print $ containsWord t2 "ad" -- False
    print $ containsWord t3 "ac" -- False
    print $ containsWord t1 "acdh" -- False
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