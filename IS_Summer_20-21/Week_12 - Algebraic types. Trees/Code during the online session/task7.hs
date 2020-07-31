import Data.List

main :: IO()
main = do
    print $ numOfNodes [(10,[3,7,12]),(3,[5,8,9]),(7,[11,13]),(12,[6,4]),(8,[1,2])] -- 2 (nodes 12 and 8)
    return ()

type Root = Int
type Child = Int
type Graph = [(Root, [Child])]

successors :: Graph -> Root -> [Child]
successors [] _ = []
successors ((y, successorsY):ys) x
 | x == y = successorsY
 | otherwise = successors ys x
 
numOfNodes :: Graph -> Int
numOfNodes graph = length $ filter (==True) $ concatMap (\(father, chilren) -> map (\x -> sum (successors graph x) == father) chilren) graph