main :: IO()
main = do
    print $ (myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2]) 5 == 453
    print $ zip [10, 20, 30, 40] [1 ..] -- [(10, 1), (20, 2), (30, 3)]

myPolynomial :: (Num a, Enum a) => (a -> a) -> [a] -> (a -> a)
myPolynomial f ys = (\ x -> sum [ i * f (y * x) | (y, i) <- zip ys [1 ..]])