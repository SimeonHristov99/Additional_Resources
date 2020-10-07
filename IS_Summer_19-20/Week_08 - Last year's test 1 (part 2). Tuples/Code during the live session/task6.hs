import Data.Char

main :: IO()
main = do
    print $ decrypt ['A'..'Z'] 5 "FYYFHPQTSITSYTRTWWTBFYYJSFR" -- "ATTACKLONDONTOMORROWATTENAM"
    return ()

encode :: [Char] -> Char -> Int -> Char
encode alphabet element offset = if elem element alphabet
    then alphabet!!(mod ((ord element - ord 'A') + mod offset (length alphabet)) (length alphabet))
    else error "blah"

decrypt :: String -> Int -> String -> String
decrypt alphabet offset input = [ encode alphabet x (offset * (-1)) | x <- input]