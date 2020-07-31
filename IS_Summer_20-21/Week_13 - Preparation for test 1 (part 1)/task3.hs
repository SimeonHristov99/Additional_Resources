main :: IO()
main = do
    print $ crackcandidates ['A'..'Z'] ["THE","AND","AT","ON","IS"] "FYYFHPQTSITSYTRTWWTBFYYJSFR" -- ["ATTACKLONDONTOMORROWATTENAM"]
    return ()

encrypt :: [Char] -> String -> Int -> String
encrypt alphabet input k = map (encode alphabet) input
 where
     encode alphabet char = alphabet!!(mod (k + (helper alphabet)) (length alphabet))
      where
       helper (x:xs)
        | x == char = 0
        | otherwise = 1 + helper xs

crackall :: [Char] -> String -> [String]
crackall alphabet input = [ encrypt alphabet input k | k <- [1 .. (length alphabet - 1)]]

substring :: String -> String -> Bool
substring [] _ = True
substring _ [] = False
substring checkWith@(x:xs) (y:ys)
 | x == y = helper xs ys || substring checkWith ys
 | otherwise = substring checkWith ys
  where
      helper :: String -> String -> Bool
      helper [] _ = True
      helper _ [] = False
      helper (x:xs) (y:ys)
       | x == y = helper xs ys
       | otherwise = False

crackcandidates :: [Char] -> [String] -> String -> [String]
crackcandidates alphabet commonWords input = [ xs | xs <- (crackall alphabet input), any (==True) [ substring ys xs | ys <- commonWords]]

{-
Algorithm:
 1. Use crackall to define a list containing all of the possible encryptions.
 2. Make an inner list of booleans that indicate substring matches. If there is one, take that encryption.
-}