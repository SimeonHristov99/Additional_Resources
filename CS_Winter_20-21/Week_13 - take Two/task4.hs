main :: IO()
main = do
    print $ (maximize [(\x -> x * x * x),(\x -> x + 1)]) 0.5 == 1.5
    print $ (maximize [(\x -> x * x * x),(\x -> x + 1)]) (-2) == -8
    print $ (maximize [(\x -> x * x * x),(\x -> x + 1)]) (-0.2) == 0.8
    print $ (maximize [(\x -> x * x * x),(\x -> x + 1)]) (-5) == (-125)

maximize :: (Ord a, Num a) => [(a -> a)] -> (a -> a)
maximize fs = (\x -> (foldl1 (\f1 f2 -> if (abs $ f1 x) > (abs $ f2 x) then f1 else f2) fs) x)