import Data.Char

main::IO()
main = do
    print $ countLettersAndDigits "n!!ice;!123" -- 7
    print $ countLettersAndDigits "wh@t is th1s" -- 9
    return ()

{-
countLettersAndDigits :: String -> Int
countLettersAndDigits "" = 0
countLettersAndDigits (l:ls)
 | elem l ['A' .. 'Z'] || elem l ['a' .. 'z'] || elem l ['0' .. '9'] = 1 + countLettersAndDigits ls
 | otherwise = countLettersAndDigits ls
-}

countLettersAndDigits = length . filter isAlphaNum
