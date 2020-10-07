import Data.Char
import Data.List

main :: IO()
main = do
    print $ encode "Haskell" -- "Haskell"
    print $ encode "aaabccdefff" -- "3abccde3f"
    print $ encode "aaaaaaaaaaaabbb" -- "12a3b"
    print $ decode "12a3b" -- "aaaaaaaaaaaabbb"
    return ()

encode :: String -> String
encode xs = concat $ helper $ group xs
 where
     helper :: [String] -> [String]
     helper [] = []
     helper (x:xs)
      | length x > 2 = (show (length x) ++ [head x]) : helper xs
      | otherwise = x : helper xs

decode :: String -> String
decode xs = helper xs 0
 where
     helper :: String -> Int -> String
     helper [] _ = []
     helper (x:xs) currentNumber
      | isDigit x = helper xs (currentNumber * 10 + digitToInt x)
      | otherwise = replicate currentNumber x ++ helper xs 0