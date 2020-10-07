main :: IO()
main = do
    print $ listSquares 1 30 -- [(1, 1), (4, 21), (9, 91), (16, 341), (25, 651)]
    print $ listSquares 250 300 -- [(256, 87381), (289, 83811)]
    print $ listSquares (-100) 50 -- [(0,0),(1,1),(4,21),(9,91),(16,341),(25,651),(36,1911),(49,2451)]
    return ()

listSquares :: Int -> Int -> [(Int, Int)]
listSquares x y = [ (z, sumSquaredDivisors z) | z <- [x .. y], k z * k z == z]
 where
     k z = floor $ sqrt $ fromIntegral z
     sumSquaredDivisors z = sum [ x * x | x <- [1 .. z], mod z x == 0]