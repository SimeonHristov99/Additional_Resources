main :: IO()
main = do
    print $ pow 2 5
    return ()

pow :: Double -> Integer -> Double
pow x 0 = 1
pow x n = x * pow x (n - 1)