main :: IO()
main = do
    print $ ((specialSum (5-) [1..10]) (> 0)) == 30
    print $ ((specialSum (\ x -> x + 1) [(-5)..5]) odd) -- == 45

specialSum :: (Int -> Int) -> [Int] -> ((Int -> Bool) -> Int)
specialSum f xs = (\p -> sum [x*x | x <- xs, p (f x)])