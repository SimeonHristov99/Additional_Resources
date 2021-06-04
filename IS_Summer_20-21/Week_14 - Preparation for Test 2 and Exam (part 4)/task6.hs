main :: IO()
main = do
    print $ (poly []) 15 == 0
    print $ (poly [0]) 1 == 0
    print $ (poly [0,1,2,3]) 1 == 6
    print $ (poly [1,1,1,1,1]) 2 == 31
    print $ (poly [1,0,1,0]) 3 == 10
    print $ (poly [1,2,0,2,1]) 2 == 37
    print $ (poly [0 .. 100]) 1 == 5050
    print $ (poly [0,1,2,3]) 999 == 2993005998
    print $ (poly [-500 .. 0]) 100 == 1804961490326238144

poly :: [Int] -> (Int -> Int)
poly as = (\x -> sum [a*x^i | (a, i) <- zip as [0..]])

{-
poly :: [Int] -> (Int -> Int)
poly xs = (\ x -> sum $ map (\ (a, i) -> a * x ^ i) $ zip xs [0 ..])
-}