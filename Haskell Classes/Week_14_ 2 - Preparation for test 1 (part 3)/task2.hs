import Data.Char

main :: IO()
main = do
    print $ wordsToMarks "" -- 0
    print $ wordsToMarks "attitude" -- 100
    print $ wordsToMarks "love" -- 54
    print $ wordsToMarks "friendship" -- 108
    return ()

wordsToMarks :: String -> Int
wordsToMarks xs = sum $ map (\x -> ord x - 96) (map toLower xs)