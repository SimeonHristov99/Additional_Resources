import Data.List
import Data.Char

main :: IO()
main = do
    print $ foldl1 (-) [1 .. 10]
    print $ encode "Haskell" -- "Haskell"
    print $ encode "aaabccdefff" -- "3abccde3f"
    print $ encode "aaaaaaaaaaaabbb" -- "12a3b"
    print $ decode "12a3b" -- "aaaaaaaaaaaabbb"
    return ()

-- digitToInt :: Char -> Int
-- replicate :: Int -> a -> [a] 

decode :: String -> String
decode xs = helper xs 0
 where
     helper :: String -> Int -> String
     helper [] _ = []
     helper (x:xs) currentNumber
      | isDigit x = helper xs (currentNumber * 10 + digitToInt x)  -- Check whether the current character is a digit
      | otherwise = replicate currentNumber x ++ helper xs 0 -- Repeat x currentNumber times and continue with the leftOver

{-
decode x ='1' xs = "2a3b"
> helper x = '2' xs = "a3b" 1
    > helper "a3b" 12
> helper (x = 'a':xs = "3b") 12
> "aaaaaaaaaaa" ++ helper xs 0
-}

encode :: String -> String
encode xs = helper $ group xs
 where
     helper :: [String] -> String
     helper [] = []
     helper (x:xs)
      | length x >= 3 = show (length x) ++ [head x] ++ helper xs  -- convert length to int. 
      | otherwise = x ++ helper xs