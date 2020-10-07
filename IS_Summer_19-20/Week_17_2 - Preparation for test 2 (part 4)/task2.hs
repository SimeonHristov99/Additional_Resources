main :: IO()
main = do
    print $ findUncles t 5 -- [3,4]
    print $ findUncles t 7 -- [2,4]
    print $ findUncles t 10 -- [5]

type Tree = [(Int, [Int])]

t :: Tree
t = [(1,[2,3,4]),(2,[5,6]),(3,[7]),(4,[8,9]),(5,[]),(6,[10]),(7,[]),(8,[]),(9,[]),(10,[])]

getSiblings :: Tree -> Int -> [Int]
getSiblings [] _ = error "Node was not found!"
getSiblings ((father, children):xs) node
 | elem node children = filter (/=node) children
 | otherwise = getSiblings xs node

findUncles :: Tree -> Int -> [Int]
findUncles [] _ = error "Node was not found!"
findUncles tree node = helper tree
 where
     helper :: Tree -> [Int]
     helper ((father, children):xs)
      | elem node children = getSiblings tree father
      | otherwise = helper xs