import Data.List

main :: IO()
main = do
    print $ listLeaves [(1, 2, 3), (2, 4, 5)] -- [4, 3, 5]
    print $ listLeaves [(2, 4, 5), (1, 2, 3)] -- [4, 5, 3]
    print $ listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] -- [2, 4, 6, 9]
    return ()

type Father = Int
type Leaf = Int
type BTree = [(Father, Leaf, Leaf)]

listLeaves :: BTree -> [Leaf]
listLeaves bTree = [ x | x <- (nub (onlyNodes bTree)), not (isFather bTree x) ]

onlyNodes :: BTree -> [Leaf]
onlyNodes [] = []
onlyNodes ((x1, x2, x3):xs) = x1 : x2 : x3 : onlyNodes xs

isFather :: BTree -> Leaf -> Bool
isFather bTree x = elem x [father | (father, _, _) <- bTree ]

-- => [(1, 2, 3), (2, 4, 5)] => [1, 2, 3, 2, 4, 5]