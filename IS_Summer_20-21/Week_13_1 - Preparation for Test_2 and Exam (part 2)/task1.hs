import Data.Char

main::IO()
main = do
    print $ normalize2 "Attack London tomorrow at ten a.m." == "ATTACKLONDONTOMORROWATTENAM"

normalize :: String -> String
normalize xs = [toUpper x | x <- xs, isAlpha x]

normalize2 :: String -> String
normalize2 xs
 | any (isDigit) xs = error "There is a digit"
 | otherwise = map (toUpper) $ filter (isAlpha) xs