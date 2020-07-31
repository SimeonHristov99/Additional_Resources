main :: IO()
main = do
    print $ difference (\x -> 2 * x) 15.16 15.20 -- 7.99999999999983e-2
    print $ difference (\x -> 2 * x) 8.5 8 -- -1.0
    return ()

difference :: (Num a, Num b) => (a -> b) -> a -> a -> b
difference f num1 num2 = f num2 - f num1