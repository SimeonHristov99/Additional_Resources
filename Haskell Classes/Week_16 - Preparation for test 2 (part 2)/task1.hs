main :: IO()
main = do
    print $ myPolynomial (\x -> x - 2) [] $ 5 -- 0
    print $ myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2] $ 5 -- 453
    print $ myPolynomial (\x -> x + 10) [3.62, 6.12, 9.45, 8.02, 5, 2] $ (-5) -- -356.45
    return ()

myPolynomial :: (Num a, Enum a) => (a -> a) -> [a] -> (a -> a)
myPolynomial f ys = (\x -> sum [ i * f (y * x) | (y, i) <- zip ys [1 ..] ])