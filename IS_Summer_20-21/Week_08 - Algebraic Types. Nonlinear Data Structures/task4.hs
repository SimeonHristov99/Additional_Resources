main :: IO()
main = do
    print $ myImages (\x -> x * x) (2+) [Point 2 2, Point 1 2, Point 3 7] == [Point 2 2, Point 3 7]
    print $ f (Point 2 2)

data Point a = Point a a
 deriving (Show, Eq)

f :: (Num a) => Point a -> Point a
f (Point x y) = Point (x + 1) (y + 1)

myImages :: (Num a, Eq a) => (a -> a) -> (a -> a) -> [Point a] -> [Point a]
myImages f g xs = [ Point x y | Point x y <- xs, f x == g y]