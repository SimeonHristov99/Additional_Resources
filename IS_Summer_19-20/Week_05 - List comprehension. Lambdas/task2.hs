main :: IO()
main = do
    print $ matchesFirst [1, 2, 3] [1, 2, 3, 4, 5] -- True
    print $ matchesFirst [1, 2, 3] [1, 2, 3] -- True
    print $ matchesFirst [1, 2] [1] -- False
    print $ matchesFirst [1, 2, 3] [3, 2, 1] -- False
    return ()

matchesFirst :: [Int] -> [Int] -> Bool
matchesFirst [] _ = True
matchesFirst _ [] = False
matchesFirst (a:as) (b:bs) = if a == b then matchesFirst as bs else False