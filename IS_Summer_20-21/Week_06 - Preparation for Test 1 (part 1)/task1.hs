main :: IO()
main = do
    -- print $ zipWith (+) [1 .. 9] [0 .. ]
    -- print $ zip [1, 4, 7, 8, 5, 2] [1 .. ]
    print $ (myPolynomial (\x -> x - 2) []) 5 == 0
    print $ (myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2]) 5 == 453
    print $ (myPolynomial (\x -> x + 10) [3.62, 6.12, 9.45, 8.02, 5, 2]) (-5) == (-356.45)

-- 1 + 0
-- template <class T>
-- class myClass {
--     T a;
-- }

myPolynomial :: (Num a, Enum a) => (a -> a) -> [a] -> (a -> a)
myPolynomial f ys = (\ x -> sum $ zipWith (\ y i -> i * f (y * x)) ys [1 ..] )

-- [ i * f (y * x) | (y, i) <- zip ys [1 ..]]