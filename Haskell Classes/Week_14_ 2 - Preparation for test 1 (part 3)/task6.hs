import Data.Char

main :: IO()
main = do
  print $ convert "din" -- "((("
  print $ convert "recede" -- "()()()"
  print $ convert "Success" -- ")())())"
  print $ convert "(( @" -- "))((" 
  return ()

{-
convert :: String -> String
convert "" = ""
convert input = helper "" (map toLower input)
 where
  helper :: String -> String -> String
  helper _ "" = ""
  helper previous (l:ls) = if elem l previous || elem l ls then ')' : helper (l : previous) ls else '(' : helper (l : previous) ls
-}  

convert :: String -> String
convert xs = map (helper) withoutCapitalLetters
 where
   withoutCapitalLetters = map toLower xs
   helper c = if length (filter (== c) withoutCapitalLetters) > 1 then ')' else '('