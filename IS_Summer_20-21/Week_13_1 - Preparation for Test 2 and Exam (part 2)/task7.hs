main :: IO()
main = do
    print $ crackcandidates ['A'..'Z'] ["THE","AND","AT","ON","IS"] "FYYFHPQTSITSYTRTWWTBFYYJSFR" == "ATTACKLONDONTOMORROWATTENAM"

crackcandidates :: [Char] -> [String] -> String -> String
crackcandidates alphabet dictionary input = foldl1 (\ c1 c2 -> if countActualWords c1 < countActualWords c2 then c2 else c1 )
                                                    (crackall alphabet input)
 where
     countActualWords :: String -> Int
     countActualWords input = length [ word | word <- dictionary, substring word input]

substring :: String -> String -> Bool
substring [] [] = True
substring _ [] = False
substring s1@(x:xs) s2@(y:ys)
 | x == y = xs == take (length xs) ys || substring s1 ys
 | length xs == length ys = s1 == s2
 | otherwise = substring s1 ys

crackall :: [Char] -> String -> [String]
crackall aplhabet input = reverse[ decrypt aplhabet offset input| offset <- [1.. length aplhabet]]

decrypt :: [Char] -> Int -> String -> String
decrypt aplhabet offset = map (\x -> encode aplhabet x (-offset))

encode::String -> Char -> Int -> Char
encode xs simbol number = xs !! mod (helper xs 0 + number) (length xs)
 where
    helper::String -> Int -> Int
    helper [] _ = error ("unsupported symbol: " ++[simbol])
    helper (x:xs) index
     | x == simbol = index
     | otherwise = helper xs (index + 1)