main :: IO()
main = do
    print $ reverseNumber 123
    print $ reverseNumber 1
    print $ reverseNumber 987654321
    return()

reverseNumber :: Integer -> Integer
reverseNumber n = helper n 0
 where
     helper :: Integer -> Integer -> Integer
     helper n result
      | n < 10 = result * 10 + n
      | otherwise = helper (div n 10) (result * 10 + (mod n 10))