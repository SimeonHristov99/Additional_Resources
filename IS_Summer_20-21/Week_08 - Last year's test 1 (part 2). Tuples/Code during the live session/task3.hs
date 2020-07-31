import Data.Char

main :: IO()
main = do
    print $ normalize "Attack London tomorrow at ten a.m." -- "ATTACKLONDONTOMORROWATTENAM"
    --print $ normalize "Attack London tomorrow at 10 a.m." -- "ATTACKLONDONTOMORROWATTENAM"
    return ()

-- isAlpha :: Char -> Bool
-- toUpper :: Char -> Char

normalize :: String -> String
normalize [] = []
normalize (x:xs)
 | isDigit x = error "blah" -- if it digit
 | isAlpha x = (toUpper x) : normalize xs -- if it is a letter, make it capital and add it to the result
 | otherwise = normalize xs -- ignore everything else