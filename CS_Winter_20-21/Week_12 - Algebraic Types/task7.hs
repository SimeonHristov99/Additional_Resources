import Data.List

main :: IO()
main = do
    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.8284271247461903,ThreeD 4 5 6,ThreeD 6 5 4)

data Point a = TwoD a a | ThreeD a a a
 deriving (Show, Eq)

distance :: (Floating a) => Point a -> Point a -> a
distance (TwoD x1 y1) (TwoD x2 y2) = sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
distance (ThreeD x1 y1 z1) (ThreeD x2 y2 z2) = sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1) + (z2 - z1) * (z2 - z1))
distance _ _ = error "Points must have an equal number of coordinates"

getClosestDistance :: (Ord a, Floating a) => [Point a] -> (a, Point a, Point a)
getClosestDistance xs = head [(minDist, x, y) | [x, y] <- k, distance x y == minDist]
 where
     k = filter (\ x -> length x == 2) $ subsequences xs -- k = [[(ThreeD 4 5 6), (ThreeD 2 5 10)]]
     minDist = minimum $ map (\ [x, y] -> distance x y) k