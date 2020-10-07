import Data.Char
import Data.List

main :: IO()
main = do
    print $ duplicateCount "" -- 0
    print $ duplicateCount "abcde" -- 0
    print $ duplicateCount "aabbcde" -- 2
    print $ duplicateCount "aaBbcde" -- 2
    print $ duplicateCount "Indivisibility" --1
    print $ duplicateCount "Indivisibilities" --2
    print $ duplicateCount ['a'..'z'] -- 0
    print $ duplicateCount (['a'..'z'] ++ ['A'..'Z']) -- 26
    return ()
    
duplicateCount :: String -> Int
duplicateCount lst = helper $ sort [toLower x | x <- lst]
 where
     helper :: String -> Int
     helper "" = 0
     helper [a] = 0
     helper (l0:l1:ls)
      | l0 == l1 = 1 + helper (filter (/= l0) (ls))
      | otherwise = helper (l1:ls)