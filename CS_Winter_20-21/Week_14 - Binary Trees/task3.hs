main :: IO()
main = do
    print $ genWords t1 == ["acf","acd","abe","cf","cd","f","d","be","e"]
    print $ genWords t2 == ["acd","ab","cd","d","b"]
    print $ genWords t3 == ["abdh","abdi","abe","acf","acg","bdh","bdi","be","dh","di","h","i","e","cf","cg","f","g"]

------------------------------------------------------------------------------------------

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show)

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 

------------------------------------------------------------------------------------------

genWords :: (Eq a) => BTree a -> [[a]]
genWords Nil = []
genWords (Node value Nil Nil) = [[value]]
genWords t@(Node value left right) = filter (containsWord t) $ map (value:) (genWords left)
                                                                ++ map (value:) (genWords right)
                                                                ++ genWords left
                                                                ++ genWords right

containsWord :: (Eq a) => BTree a -> [a] -> Bool
containsWord Nil _ = False
containsWord _ [] = error "A word must contain at least one character!"
containsWord (Node value left right) word@(x:xs) -- x = 'c' xs = ['d']
 | x == value = helper left xs || helper right xs
 | otherwise = containsWord left word || containsWord right word

helper :: (Eq a) => BTree a -> [a] -> Bool
helper Nil [] = True
helper (Node value left right) (x:xs)
 | x == value = helper left xs || helper right xs
 | otherwise = False
helper _ _ = False