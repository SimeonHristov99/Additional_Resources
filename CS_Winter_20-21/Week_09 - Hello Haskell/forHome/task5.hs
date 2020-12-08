main :: IO()
main = do
    print $ areAmicable 200 300 == False
    print $ areAmicable 220 284 == True
    print $ areAmicable 284 220 == True
    print $ areAmicable 1184 1210 == True
    print $ areAmicable 2620 2924 == True
    print $ areAmicable 6232 6368 == True

sumDivs x = sum [ i | i <- [1 .. x - 1], mod x i == 0 ]

areAmicable :: Int -> Int -> Bool
areAmicable x y = (sumDivs x) == y || (sumDivs y) == x