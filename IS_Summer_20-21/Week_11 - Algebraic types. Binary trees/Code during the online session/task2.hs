main :: IO()
main = do
    print $ distance (TwoD 2 5) (TwoD 6 9) -- 5.66
    print $ distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) -- 16.0
    return ()

data Point a = TwoD a a | ThreeD a a a
 deriving (Show)

distance :: (Floating a) => Point a -> Point a -> a
distance (TwoD x1 y1) (TwoD x2 y2) = sqrt ((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
distance (ThreeD x1 y1 z1) (ThreeD x2 y2 z2) = sqrt ((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1) + (z2 - z1) * (z2 - z1))
distance _ _ = error "Points must have equal dimension"