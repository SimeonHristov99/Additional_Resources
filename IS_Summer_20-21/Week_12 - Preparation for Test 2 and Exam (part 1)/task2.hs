import Data.List
main::IO()
main = do
    print $ genWords t1 == ["acf","acd","abe","cf","cd","f","d","be","e"]
    print $ genWords t2 == ["acd","ab","cd","d","b"]
    print $ genWords t3 == ["abdh","abdi","abe","acf","acg","bdh","bdi","be","dh","di","h","i","e","cf","cg","f","g"]

data BTree = Nil | Node Char (BTree) (BTree)

t1 :: BTree
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil))

containsWord :: BTree -> String -> Bool
containsWord Nil _ = False
containsWord _ "" = False
containsWord (Node val Nil Nil) [x] = x==val
containsWord (Node val left right) word@(x:xs)
 | val == x = helper left xs || helper right xs
 | otherwise = containsWord left word || containsWord right word
  where
     helper :: BTree -> String ->Bool
     helper (Node value Nil Nil) [x] = x == value
     helper (Node val left right) (x:xs) = val == x && (helper left xs || helper right xs)
     helper _ _ = False

genWords :: BTree -> [String]
genWords Nil = [""]
genWords (Node val Nil Nil )= [[val]]
genWords tree@(Node value left right) = filter (containsWord tree) $ map (value:)(genWords left) ++ map (value:) (genWords right) ++ genWords left ++ genWords right