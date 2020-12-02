main :: IO()
main = do
    print $ sumCubes 5 1 == 126
    print $ sumCubes 10 50 == 126000

sumCubes x y = x^3 + y^3