main :: IO()
main = do
    print $ intersectionPoints2 (\x -> x) (\x -> x * x) (-5) 5 == [0, 1]
    print $ intersectionPoints2 (\x -> x) (\x -> x * x + 1) (-5) 5 == []

intersectionPoints :: (Int -> Int) -> (Int -> Int) -> Int -> Int -> [Int]
intersectionPoints f g start finish = [x | x <- [start .. finish], f x == g x]

intersectionPoints2:: (Int -> Int) -> (Int -> Int) -> Int -> Int -> [Int]
intersectionPoints2 f g start finish = filter (\x -> f x == g x) [start .. finish]