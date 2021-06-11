main :: IO()
main = do
    print $ init [1, 2, 3, 4, 5]
    print $ tail [1, 2, 3, 4, 5]
    print $ rotate 5 ['a','b','c','d','e','f','g','h'] == "fghabcde"
    print $ rotate 8 ['a','b','c','d','e','f','g','h'] == "abcdefgh"
    print $ rotate 11 ['a','b','c','d','e','f','g','h'] == "defghabc"
    print $ rotate (-2) ['a','b','c','d','e','f','g','h'] == "ghabcdef"
    print $ rotate2 5 ['a','b','c','d','e','f','g','h'] == "fghabcde"
    print $ rotate2 8 ['a','b','c','d','e','f','g','h'] == "abcdefgh"
    print $ rotate2 11 ['a','b','c','d','e','f','g','h'] == "defghabc"
    print $ rotate2 (-2) ['a','b','c','d','e','f','g','h'] == "ghabcdef"

rotate :: Int -> [Char] -> String
rotate 0 xs = xs
rotate n xs
 | n > 0 = rotate (n - 1) (tail xs ++ [head xs])
 | otherwise = rotate (n + 1) ([last xs] ++ init xs)

rotate2 :: Int -> [Char] -> String
rotate2 0 xs = xs
rotate2 n xs
 | n > 0 = rotate (n - 1) (tail xs ++ [head xs])
 | otherwise = rotate (length xs + n) xs
