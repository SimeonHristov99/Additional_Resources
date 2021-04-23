main :: IO()
main = do
    print $ closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == ThreeD 4.0 5.0 6.0

data Point a = TwoD a a | ThreeD a a a
 deriving (Show, Eq)

closestTo :: (Ord a, Floating a, RealFrac a) => Point a -> [Point a] -> Point a
closestTo p = foldr1 (\ p1 p2 -> if distance p1 p < distance p2 p then p1 else p2)

roundTwo :: (Fractional a, RealFrac a) => a -> a
roundTwo x = (fromIntegral $ round $ x * 100) / 100
{-
5.652366 * 100
round 565.2366
565 / 100
5.65
-}

distance :: (Floating a, RealFrac a) => Point a -> Point a -> a
distance (TwoD x1 y1) (TwoD x2 y2) = roundTwo $ sqrt $ (x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)
distance (ThreeD x1 y1 z1) (ThreeD x2 y2 z2) = roundTwo $ sqrt $ (x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1) + (z2 - z1) * (z2 - z1)
distance _ _ = error "Points mnust be with equal coordinates"