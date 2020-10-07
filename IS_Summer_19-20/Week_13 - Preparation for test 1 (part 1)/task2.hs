import Data.List

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
substring checkWith@(x:xs) (y:ys)
 | x == y = helper xs ys || substring checkWith ys
 | otherwise = substring checkWith ys
  where
      helper :: String -> String -> Bool
      helper [] _ = True
      helper _ [] = False
      helper (x:xs) (y:ys)
       | x == y = helper xs ys
       | otherwise = False

{-
Algorithm:
 1. Define the edge cases.
 2. Define a function that receives two strings and checks whether the first string is the beginning of the second.
 3. Define a function that finds the beginning and then calls 2.
-}