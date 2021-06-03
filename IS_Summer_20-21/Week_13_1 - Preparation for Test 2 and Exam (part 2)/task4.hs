main:: IO()
main = do
    print $ decrypt2 ['A'..'Z'] 5 "FYYFHPQTSITSYTRTWWTBFYYJSFR" == "ATTACKLONDONTOMORROWATTENAM"

decrypt :: [Char] -> Int -> String -> String
decrypt aplhabet offset string = [ encode aplhabet x (-offset)| x <- string]

decrypt2 :: [Char] -> Int -> String -> String
decrypt2 aplhabet offset = map (\x -> encode aplhabet x (-offset))

encode::String -> Char -> Int -> Char
encode xs simbol number = xs !! mod (helper xs 0 + number) (length xs)
 where
    helper::String -> Int -> Int
    helper [] _ = error ("unsupported symbol: " ++[simbol])
    helper (x:xs) index
     | x == simbol = index
     | otherwise = helper xs (index + 1)