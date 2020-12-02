main :: IO()
main = do
    print $ average 5 6 == 5.5

average :: Int -> Int -> Double
average x y = (fromIntegral (x + y)) / 2