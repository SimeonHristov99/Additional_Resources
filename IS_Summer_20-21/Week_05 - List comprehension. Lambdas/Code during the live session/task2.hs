main :: IO()
main = do
    print $ matchesFirst [1, 2, 3] [1, 2, 3, 4, 5] -- True
    print $ matchesFirst [1, 2, 3] [1, 2, 3] -- True
    print $ matchesFirst [1, 2] [1] -- False
    print $ matchesFirst [1, 2, 3] [1, 2, 1] -- False
    print $ remove5s [1, 2, 5, 4, 5, 5, 5, 6, 3] -- [1, 2, 4, 6, 3]
    print $ (\x -> x) 12
    print $ double2 [1, 2, 3, 4]
    print $ (\x -> even x) 6
    print $ (\f g y -> g (f y)) (\x -> 2 * x) (\x -> 3 * x) 6
    print $ (\xs f -> map f xs) [1, 2, 3, 4, 5] (\x -> 3 * x)

map :: (a -> b) -> [a] -> [b]

{-
[1, 2, 3, 4, 5] (\x -> 3 * x)
map (\1 -> 3 * 1) [1, 2, 3, 4, 5] -- 3
map (\2 -> 3 * 2) [2, 3, 4, 5] -- 6
-}

-- [1, 2, 3, 4, 5] 

{-
(\x -> 2 * x) 5 6
(\5 -> 2 * 5) - (\6 -> 2 * 6)
10 - 12
 -2
-}

{-
(\x -> 2 * x) (\x -> 3 * x) 6
(\6 -> 6 * 2) -- 12
(\12 -> 3 * 12) -- 36
-}

matchesFirst :: [Int] -> [Int] -> Bool
matchesFirst [] ys = True
matchesFirst xs [] = False
matchesFirst (a:as) (b:bs)
 | a /= b = False
 | otherwise = matchesFirst as bs

remove5s :: [Int] -> [Int]
remove5s xs = filter (\x -> x /= 5) xs

double2 :: [Int] -> [Int]
double2 = (\xs -> map (\x -> x + 2) xs)