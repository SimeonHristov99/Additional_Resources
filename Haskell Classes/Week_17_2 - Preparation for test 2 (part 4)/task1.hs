main :: IO()
main = do
    print $ (specialSum (5 -) [1..10]) (> 0) --30
    print $ (specialSum (\x -> x + 1) [(-5)..5]) odd -- 45
    print $ (specialSum2 (5 -) [1..10]) (> 0) --30
    print $ (specialSum2 (\x -> x + 1) [(-5)..5]) odd -- 40
    return ()

specialSum :: (Int -> Int) -> [Int] -> ((Int -> Bool) -> Int)
specialSum f xs = (\predicate -> sum $ map (\x -> x * x) (filter (predicate) (map f xs)))

specialSum2 :: (Int -> Int) -> [Int] -> ((Int -> Bool) -> Int)
specialSum2 f xs = (\g -> sum [ x * x | x <- xs , g (f x) ])

{-
(specialSum f=(5 -) xs=[1..10]) predicate=(> 0)
> (\predicate -> sum $ map (\x -> x * x) (filter (predicate) (map f xs)))
> (\(>0) -> sum $ map (\x -> x * x) (filter (>0) (map (5-) [1..10])))
> (\(>0) -> sum $ map (\x -> x * x) (filter (>0) [5-1, 5-2, 5-3, 5-4, 5-5, 5-6, 5-7, 5-8, 5-9, 5-10])
> (\(>0) -> sum $ map (\x -> x * x) (filter (>0) [4, 3, 2, 1, 0, -1, -2, -3, -4, -5])
> (\(>0) -> sum $ map (\x -> x * x) [4, 3, 2, 1])
> (\(>0) -> sum $ [16, 9, 4, 1])
> 30
-}