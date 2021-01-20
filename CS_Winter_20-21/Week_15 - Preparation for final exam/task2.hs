main :: IO()
main = do
    print $ (myPoly [2.7, 3.0 ..]) 2.2 3 == -0.4399999999999998
    print $ (myPoly [2, 3 ..]) 2.2 3 == 0.2880000000000002

myPoly :: (Num a) => [a] -> (a -> Int -> a)
myPoly xs = (\ x y -> product [ x - current | current <- (take y xs)])