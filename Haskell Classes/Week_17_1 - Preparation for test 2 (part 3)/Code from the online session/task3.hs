main :: IO()
main = do
    print $ (convert tree) == (Node 30 (Node 36 (Node 36 Nil Nil) (Node 35 Nil (Node 33 Nil Nil))) (Node 21 (Node 26 Nil Nil) (Node 15 Nil (Node 8 Nil Nil))))
    return ()

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show, Eq)

tree = Node 4 (Node 1 (Node 0 Nil Nil) (Node 2 Nil (Node 3 Nil Nil))) (Node 6 (Node 5 Nil Nil) (Node 7 Nil (Node 8 Nil Nil)))

onlyNodes Nil = []
onlyNodes (Node current left right) = [current] ++ (onlyNodes left) ++ (onlyNodes right)

convert treeInput = helper treeInput
 where
     helper Nil = Nil
     helper (Node current left right) = Node (sum (filter (>= current) (onlyNodes treeInput))) (helper left) (helper right)