main :: IO()
main = do
    print $ dividePM (10, 5) == (2, 0) -- 10 / 5 = 2 and 10 % 5 = 0
    print $ dividePM (5, 10) == (0, 5) -- 5 / 10 = 0 and 5 % 10 = 5
    print $ divideNonPM (10, 5) == (2, 0)
    print $ divideNonPM (5, 10) == (0, 5)
    print $ (\ (x, y) -> ( div x y, mod x y)) (5, 10) == (0, 5)

type Point = (Int, Int)

divideNonPM :: Point -> Point
divideNonPM x = ( div (fst x) (snd x), mod (fst x) (snd x))

dividePM :: Point -> Point
dividePM (x, y) = ( div x y, mod x y)