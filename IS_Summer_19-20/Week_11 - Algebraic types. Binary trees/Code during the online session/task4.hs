import Data.List

main :: IO()
main = do
    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] -- (2.8284271247461903,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)
    return ()

data Point a = TwoD a a | ThreeD a a a
 deriving (Show)

distance :: (Floating a) => Point a -> Point a -> a
distance (TwoD x1 y1) (TwoD x2 y2) = sqrt ((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
distance (ThreeD x1 y1 z1) (ThreeD x2 y2 z2) = sqrt ((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1) + (z2 - z1) * (z2 - z1))
distance _ _ = error "Points must have equal dimension"

closestTo :: (Floating a, Eq a, Ord a) => Point a -> [Point a] -> [Point a]
closestTo p xs = filter (\x -> distance p x == k) xs
    where
        k = minimum $ map (distance p) xs

-- subsequences :: [a] -> [[a]] 

getClosestDistance :: (Floating a, Eq a, Ord a) => [Point a] -> (a, Point a, Point a)
getClosestDistance xs = head [ (distance p1 p2, p1, p2) | [p1, p2] <- k, distance p1 p2 == minDistance]
    where
        k = filter (\xs -> length xs == 2) (subsequences xs)
        minDistance = minimum $ map (\[x, y] -> distance x y) k