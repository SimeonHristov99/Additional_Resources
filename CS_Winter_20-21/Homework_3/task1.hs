main :: IO()
main = do
    print $ encode "" == ""
    print $ encode "Haskell" == "Haskell"
    print $ encode "aaabccdefff" == "3abccde3f"
    print $ encode "aaaaaaaaaaaabbb" == "12a3b"
    print $ encode "aabbb" =="aa3b"

encode :: String -> String
encode [] = []
encode (x:xs) = if k < 3 then (takeWhile (==x) (x:xs)) ++ encode ((dropWhile (==x) (x:xs))) else show k ++ [x] ++ encode (dropWhile (==x) (x:xs))
    where
        k = length (takeWhile (==x) (x:xs))