main :: IO()
main = do
    print $ encrypt ['A'..'Z'] 5 "ATTACKLONDONTOMORROWATTENAM" == "FYYFHPQTSITSYTRTWWTBFYYJSFR"

encrypt :: [Char] -> Int -> String -> String
encrypt aplhabet offset string = [ encode aplhabet x offset | x <- string]

encrypt2 :: [Char] -> Int -> String -> String
encrypt2 aplhabet offset = map (\x -> encode aplhabet x (offset * (-1)))

encode::String -> Char -> Int -> Char
encode xs simbol number = xs !! mod (helper xs 0 + number) (length xs)
 where
    helper::String -> Int -> Int
    helper [] _ = error ("unsupported symbol: " ++[simbol])
    helper (x:xs) index
     | x == simbol = index
     | otherwise = helper xs (index + 1)