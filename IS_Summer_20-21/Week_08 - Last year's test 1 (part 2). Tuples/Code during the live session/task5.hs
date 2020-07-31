import Data.Char

main :: IO()
main = do
    print $ encrypt ['A'..'Z'] 5 "ATTACKLONDONTOMORROWATTENAM" -- "FYYFHPQTSITSYTRTWWTBFYYJSFR"
    print $ encrypt2 ['A'..'Z'] 5 "ATTACKLONDONTOMORROWATTENAM" -- "FYYFHPQTSITSYTRTWWTBFYYJSFR"
    return ()

encode :: [Char] -> Char -> Int -> Char
encode alphabet element offset = if elem element alphabet
    then alphabet!!(mod ((ord element - ord 'A') + mod offset (length alphabet)) (length alphabet))
    else error "blah"

encrypt :: String -> Int -> String -> String
encrypt alphabet offset input = [ encode alphabet x offset | x <- input]

encrypt2 :: String -> Int -> String -> String
encrypt2 alphabet offset input = map (\x -> encode alphabet x offset) input

{-
encrypt2 alpha = ['A'..'Z'] offset = 5 input = "ATTACKLONDONTOMORROWATTENAM"
map: Applies a function to every element in a list.
x = A -> F : 
x = T -> Y : [F, Y, Y]
-}
-- Make a lamda function that encodes every element is the input.