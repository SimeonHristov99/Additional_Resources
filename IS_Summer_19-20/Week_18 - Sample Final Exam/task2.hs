main :: IO()
main = do
    print $ intersectionPoints (\x -> x) (\x -> x * x) (-5) 5 -- [0,1]
    print $ intersectionPoints (\x -> x) (\x -> x * x + 1) (-5) 5 -- []
    return ()

intersectionPoints :: (Int -> Int) -> (Int -> Int) -> Int -> Int -> [Int]
intersectionPoints f g start end = filter (\x -> f x == g x) [start .. end]