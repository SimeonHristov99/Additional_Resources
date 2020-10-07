main :: IO()
main = do
    print $ switchsum (\x -> x + 1) (\x -> x * 2) 1 $ 2 -- 3
    print $ switchsum (\x -> x + 1) (\x -> x * 2) 2 $ 2 -- 9
    print $ switchsum (\x -> x + 1) (\x -> x * 2) 3 $ 2 -- 16
    print $ switchsum (\x -> x + 1) (\x -> x * 2) 4 $ 2 -- 30
    return ()

switchsum :: (Int -> Int) -> (Int -> Int) -> Int -> (Int -> Int)
switchsum f g 1 = (\x -> f x)
switchsum f g n = (\x -> f x + switchsum g f (n - 1) (f x))