main :: IO()
main = do
    print $ (\x y z -> x y z) (\x y -> x * x + y - 1) 2 3 
    print $ product [1, 2, 3]
    print $ product (map (\f -> f 2) [\x -> x, \x -> x * x, \x -> x * x * x])
    return ()

{-
(\x y z -> x y z) (\x y -> x * x + y - 1) 2 3
(\ (\x y -> x * x + y - 1) 2 3 -> (\2 3 -> 2 * 2 + 3 - 1))
(\2 3 -> 2 * 2 + 3 - 1) -> 4 + 2 = 6
-}

{-
product (map (\f -> f 2) [\x -> x, \x -> x * x, \x -> x * x * x])
> (\x -> x) 2 -> [2, 4, 8]
> (\x -> x * x * x) 2 -> 8
> producr [2, 4, 8] = 64
-}