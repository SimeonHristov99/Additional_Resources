main :: IO()
main = do
    print $ perimeter $ Circle 5 -- 31.42
    print $ perimeter $ Rectangle 2.5 4.5 -- 14
    print $ perimeter $ Rectangle 5.5 20.6 -- 52.2
    print $ perimeter $ Triangle 5.3 3.9 4.89 -- 14.09
    print $ perimeter $ Cylinder 2.5 10 -- 30   
    print $ area $ Circle 5 -- 78.54
    print $ area $ Rectangle 2.5 4.5 -- 11.25
    print $ area $ Rectangle 5.5 20.6 -- 113.3
    print $ area $ Triangle 5.3 3.9 4.89 -- 9.128
    print $ area $ Cylinder 20 30 -- 6283.19   
    print $ isRound $ Circle 5 -- True
    print $ isRound $ Rectangle 2.5 4.5 -- False
    print $ isRound $ Rectangle 5.5 20.6 -- False
    print $ isRound $ Triangle 5.3 3.9 4.89 -- False
    print $ isRound $ Cylinder 20 30 -- True
    print $ is2D $ Circle 5 -- True
    print $ is2D $ Rectangle 2.5 4.5 -- True
    print $ is2D $ Rectangle 5.5 20.6 -- True
    print $ is2D $ Triangle 5.3 3.9 4.89 -- True
    print $ is2D $ Cylinder 20 30 -- False
    return ()

data Shape = Circle Double | Rectangle Double Double | Triangle Double Double Double | Cylinder Double Double
    deriving (Show)

is2D :: Shape -> Bool
is2D (Cylinder _ _) = False
is2D _ = True

isRound :: Shape -> Bool
isRound (Circle _) = True
isRound (Cylinder _ _) = True
isRound _ = False

area :: Shape -> Double
area (Circle r) = pi * r * r
area (Rectangle a b) = a * b
area (Cylinder r h) = 2*pi*r*h + 2*pi*r*r
area t@(Triangle a b c) = sqrt (p * (p - a) * (p - b) * (p - c))
 where
     p = calcHalfPerimerter t
     calcHalfPerimerter :: Shape -> Double
     calcHalfPerimerter (Triangle a b c) = (a + b + c) / 2.0
     calcHalfPerimerter _ = error "Not a triangle"

perimeter :: Shape -> Double
perimeter (Circle r) = 2 * pi * r
perimeter (Rectangle a b) = 2 * a + 2 * b
perimeter (Triangle a b c) = a + b + c
perimeter (Cylinder r h) = 4 * r + 2 * h