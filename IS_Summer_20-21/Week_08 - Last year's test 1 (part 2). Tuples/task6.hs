import Data.Char

main :: IO()
main = do
    print $ decrypt ['A'..'Z'] 5 "FYYFHPQTSITSYTRTWWTBFYYJSFR" -- "ATTACKLONDONTOMORROWATTENAM"
    return ()



decrypt :: [Char] -> Int -> String -> String
decrypt alphabet offset input = map (\x -> encode x (offset * ( - 1))) input
 where
     encode :: Char -> Int -> Char
     encode ch offset = alphabet !! mod ((position_in_alphabet alphabet) + offset) (length alphabet)
      where
       position_in_alphabet (l:ls)
        | ch == l = 0
        | otherwise = 1 + position_in_alphabet ls