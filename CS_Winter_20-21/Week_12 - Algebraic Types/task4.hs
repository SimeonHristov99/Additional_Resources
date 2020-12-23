main :: IO()
main = do
    print $ twoD
    print $ (ThreeD 5 6 7)
    print $ myImages (\x -> x * x) (2+) [TwoD 2 2, TwoD 1 2, TwoD 3 7] == [TwoD 2 2, TwoD 3 7]

data Point a = TwoD a a | ThreeD a a a
 deriving (Show, Eq)

twoD = (TwoD 5 6)

myImages :: (Eq a) => (a -> a) -> (a -> a) -> [Point a] -> [Point a]
myImages f g xs = filter (\ (TwoD x y) -> f x == g y ) xs