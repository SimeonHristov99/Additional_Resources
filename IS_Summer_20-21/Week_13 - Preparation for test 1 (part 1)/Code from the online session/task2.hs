main :: IO()
main = do
    print $ substring "Haskell" "Haskell Curry" -- True
    print $ substring "Curry" "Haskell Curry" -- True
    print $ substring "Curry" "Haskell C5urry" -- False
    print $ substring "Turing" "Haskell Curry" -- False
    return ()

substring :: String -> String -> Bool
substring [] _ = True
substring _ [] = False
substring (x:xs) (y:ys)
 | x == y = helper xs ys
 | otherwise = substring (x:xs) ys
  where
      helper [] _ = True
      helper _ [] = False
      helper (x:xs) (y:ys)
       | x == y = helper xs ys
       | otherwise = False