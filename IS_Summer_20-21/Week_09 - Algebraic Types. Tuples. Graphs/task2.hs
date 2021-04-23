main :: IO()
main = do
    print $ roundTwo 5.652366
    print $ distance (TwoD 2 5) (TwoD 6 9) == 5.66
    print $ distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) == 16.03
    print $ distance (ThreeD 2 5 10) (TwoD 6 9)

data Point a = TwoD a a | ThreeD a a a
 deriving (Show)

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