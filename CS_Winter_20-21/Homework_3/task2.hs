import Data.Char

main :: IO()
main = do
    print $ decode "" == ""
    print $ decode "12a3b" == "aaaaaaaaaaaabbb"
    print $ decode "a3b" == "abbb"
    print $ decode "aa3b" == "aabbb"
    print $ decode "a4b3c20o" == "abbbbcccoooooooooooooooooooo"

decode :: String -> String
decode [] = []
decode (x:xs)
 | isDigit x = replicate (read $ takeWhile isDigit (x:xs)) (head (dropWhile isDigit (x:xs))) ++ decode (tail (dropWhile isDigit (x:xs)))
 | otherwise = [x] ++ decode xs