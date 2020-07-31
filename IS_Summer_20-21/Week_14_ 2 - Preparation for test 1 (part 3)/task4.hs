import Data.Char

main :: IO()
main = do
    print $ number [] -- []
    print $ number ["a", "b", "c"] -- ["1: a", "2: b", "3: c"]
    return ()

{-
number :: [String] -> [String]
number lst = helper [ ": " ++ x | x <- lst] 1
 where
     helper [] _ = []
     helper (a:as) i = (show i ++ a) : helper as (i + 1)
-}

number xs = zipWith (\x y -> show x ++ ": " ++ y) [1 ..] xs