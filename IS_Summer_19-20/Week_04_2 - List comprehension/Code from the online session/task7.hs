main :: IO()
main = do
    print  $ concatenate [1, 2, 3] []
    print $ concatenate [1, 2, 3] [5, 8, 9] -- [1, 2, 3, 5, 8, 9]
    print $ concatenate [1] [5, 8, 9] -- [1, 5, 8, 9]
    print $ concatenate [1, 2, 3] [5] -- [1, 2, 3, 5]
    print $ concatenate2 [1, 2, 3] [5, 8, 9] -- [1, 2, 3, 5, 8, 9]
    print $ concatenate2 [1] [5, 8, 9] -- [1, 5, 8, 9]
    print $ concatenate2 [1, 2, 3] [5] -- [1, 2, 3, 5]
    return ()

concatenate :: [Int] -> [Int] -> [Int]
concatenate ls1 ls2 = ls1 ++ ls2

concatenate2 :: [Int] -> [Int] -> [Int]
concatenate2 ls1 ls2 = helper (reverse ls1) ls2
 where
     helper :: [Int] -> [Int] -> [Int]
     helper [] ls2 = ls2
     helper (a:as) ls2 = helper as (a:ls2)

{-
[1, 2, 3] [5, 8, 9]
> h [3, 2, 1] [5, 8, 9]
> h 3 : [2, 1] [5, 8, 9] => h [] (3 : [5, 8, 9] => [1, 2, 3, 5, 8, 9])
-}