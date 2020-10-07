main :: IO()
main = do
    print $ getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] -- [78.54, 11.25, 113.3, 9.128, 6283.19]
    print $ maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] -- [Cylinder 20.0 30.0]
    return ()

data Shape a = Circle a | Rectangle a a | Triangle a a a | Cylinder a a
 deriving (Show)

-- Find the biggest area
-- Return the shapes with the max area.

maxArea :: (Floating a, Eq a, Ord a) => [Shape a] -> [Shape a]
maxArea xs = [ x | x <- xs, area x == k ]
 where
     k = maximum $ getAreas xs

getAreas :: (Floating a) => [Shape a] -> [a]
getAreas xs = map area xs

area :: (Floating a) => Shape a -> a
area (Circle r) = pi * r * r
area (Rectangle x y) = x * y
area (Cylinder r h) = 2*pi*r*h + 2*pi*r*r
area (Triangle x y z) = sqrt(k * (k - x) * (k - y) * (k - z))
 where
     k = (x + y + z) / 2