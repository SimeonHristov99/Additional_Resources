import Data.Char

main :: IO()
main = do
    print $ normalize "Attack London tomorrow at ten a.m."
    return ()

normalize :: String -> String
normalize "" = ""
normalize (l:ls)
 | isDigit l = error "Digits not allowed"
 | isAlpha l = toUpper l : normalize ls
 | otherwise = normalize ls