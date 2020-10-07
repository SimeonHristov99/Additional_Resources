main :: IO()
main = do
    print $ (applyN (\x -> 2 * x) 5) 2 -- 64
    print $ (applyN (\x -> div x 10) 2) 100 -- 1
    return ()

applyN :: (Int -> Int) -> Int -> (Int -> Int)
applyN f n
 | n < 1 = error "Function has to be applied at least one time!"
 | n == 1 = f
 | otherwise = f . applyN f (n - 1)