main :: IO()
main = do
    print $ divide (10, 5) -- (2, 0)
    print $ divide (5, 10) -- (0, 5)
    return ()

divide :: (Int, Int) -> (Int, Int)
divide (a, b) = ((div a b), (mod a b))