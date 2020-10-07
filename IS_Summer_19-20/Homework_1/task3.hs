main :: IO()
main = do
    print $ isSpecial 13 1   -- False
    print $ isSpecial 472 2   -- False
    print $ isSpecial 12234 3 -- False
    print $ isSpecial 131 3   -- True
    print $ isSpecial 131 2   -- True    
    print $ isSpecial 17197 2 -- True    
    print $ isSpecial 10113 3 -- True
    return ()

isPrime n = if n < 2 then False else length [x | x <- [2 .. n - 1], mod n x == 0] == 0

toList n
 | n < 10 = [n]
 | otherwise = (mod n 10) : toList (div n 10)

toNum :: [Int] -> Int
toNum [a] = a
toNum (l:ls) = l * 10^(length ls) + toNum ls

isSpecial :: Int -> Int -> Bool
isSpecial n k = if n < 10 then error "n must be greater than 10" else helper $ reverse $ toList n
 where
     helper :: [Int] -> Bool
     helper [] = True
     helper lst
      | k >= length lst = isPrime $ toNum lst
      | otherwise = isPrime (toNum (take k lst)) && helper (tail lst)