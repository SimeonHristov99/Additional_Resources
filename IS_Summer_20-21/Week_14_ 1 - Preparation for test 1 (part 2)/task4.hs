main :: IO()
main = do
    print $ specialSum 1 100
    return ()

specialSum :: Int -> Int -> Int
specialSum a b = sum [x | x <- [a .. b], elem '6' (show x), mod (x - 1) 4 == 0]