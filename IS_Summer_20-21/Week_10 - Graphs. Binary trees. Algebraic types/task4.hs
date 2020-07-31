main :: IO()
main = do
    print $ myImages (\x -> x * x) (2+) [Point 2 2, Point 1 2, Point 3 7] -- [Point 2 2, Point 3 7]
    return ()

data Point a = Point a a
 deriving (Show)

myImages :: (Eq a) => (a -> a) -> (a -> a) -> [Point a] -> [Point a]
myImages f g xs = filter (\(Point x y) -> f x == g y) xs