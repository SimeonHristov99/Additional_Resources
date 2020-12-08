main :: IO()
main = do
    print $ myGcd 5 13 == 1
    print $ myGcd 13 1235 == 13

myGcd :: Int -> Int -> Int
myGcd x y
 | min x y == 0 = max x y
 | otherwise = myGcd y (mod x y)