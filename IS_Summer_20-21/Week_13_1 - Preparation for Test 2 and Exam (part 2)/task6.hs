main :: IO()
main = do
    print $ substring "Haskell" "Haskell Curry" == True
    print $ substring "Haskell" "Hask" == False
    print $ substring "Curry" "Haskell Curry" == True
    print $ substring "Curry" "Haskell C5urry" == False
    print $ substring "Turing" "Haskell Curry" == False

substring :: String -> String -> Bool
substring [] [] = True
substring _ [] = False
substring s1@(x:xs) s2@(y:ys)
 | x == y = xs == take (length xs) ys || substring s1 ys
 | length xs == length ys = s1 == s2
 | otherwise = substring s1 ys