main :: IO()
main = do
    print $ sumCubes 5 1 == 126
    print $ sumCubes 10 50 == 126000

sumCubes :: Int -> Int -> Int
sumCubes x y = x * x * x + y * y * y