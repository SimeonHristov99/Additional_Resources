main :: IO()
main = do
    print $ encrypt ['A'..'Z'] 5 "ATTACKLONDONTOMORROWATTENAM" -- "FYYFHPQTSITSYTRTWWTBFYYJSFR"
    return ()

encrypt :: [Char] -> Int -> String -> String
encrypt alphabet offset input = map encode input
 where
     encode :: Char -> Char
     encode ch = alphabet !! mod ((position_in_alphabet alphabet) + offset) (length alphabet)
      where
       position_in_alphabet :: [Char] -> Int
       position_in_alphabet "" = error ("unsupported symbol: " ++ [ch])
       position_in_alphabet (l:ls)
        | ch == l = 0
        | otherwise = 1 + position_in_alphabet ls