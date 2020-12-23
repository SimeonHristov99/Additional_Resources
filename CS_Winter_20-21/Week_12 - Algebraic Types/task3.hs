main :: IO()
main = do
    print $ getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] -- == [78.54, 11.25, 113.3, 9.128, 6283.19]
    print $ maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == [Cylinder 20.0 30.0]

data Shape a = Circle a
              | Rectangle a a
              | Triangle a a a
              | Cylinder a a
 deriving (Show, Eq)

area :: (Floating a) => Shape a -> a
area (Circle r) = pi * r * r
area (Rectangle x y) = x * y
area (Cylinder r h) = 2 * pi * r * h + 2 * pi * r * r
area (Triangle x y z) = sqrt (p * (p - x) * (p - y) *(p - z))
 where
     p = (x + y + z) / 2

getAreas :: (Floating a) => [Shape a] -> [a]
getAreas xs = map area xs

maxArea :: (Eq a, Ord a, Floating a) => [Shape a] -> [Shape a]
maxArea xs = filter (\ x ->  area x == k) xs
 where
     k = maximum $ getAreas xs

-- maximum [1, 2, 3]