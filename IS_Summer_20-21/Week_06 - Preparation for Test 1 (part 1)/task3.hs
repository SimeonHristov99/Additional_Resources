import Data.Char
import Data.List

main :: IO()
main = do
    print $ (\x -> x) "Hi" -- id "Hi"
    print $ group $ sort $ map toLower "Test"
    print $ countOccurrences "Test" == [('e',1),('s',1),('t',2)]
    print $ countOccurrences "ThisIsAReallyLongWordContaingAlmostEveryCharacter" == [('a',6),('c',3),('d',1),('e',4),('g',2),('h',2),('i',3),('l',4),('m',1),('n',3),('o',4),('r',5),('s',3),('t',4),('v',1),('w',1),('y',2)]

countOccurrences :: String -> [(Char, Int)]
countOccurrences xs = map (\ ys -> (head ys, length ys)) $ group $ sort $ map toLower xs

{-
["e","s","tt"]
"e" -> ('e', 1)
"tt" -> ('t', 2)
-}