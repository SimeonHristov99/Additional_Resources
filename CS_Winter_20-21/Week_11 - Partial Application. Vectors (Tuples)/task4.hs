main :: IO()
main = do
    print $ divide (10, 5) == (2, 0) -- 10 / 5 = 2 and 10 % 5 = 0
    print $ divide (5, 10) == (0, 5) -- 5 / 10 = 0 and 5 % 10 = 5
    print $ ((\ (x, y) -> (div x y, mod x y)) (10, 5)) == (2, 0)

divide :: (Int, Int) -> (Int, Int)
divide (x, y) = (div x y, mod x y)

divideTuple :: (Int, Int) -> (Int, Int)
divideTuple x = (div (fst x) (snd x), mod (fst x) (snd x))