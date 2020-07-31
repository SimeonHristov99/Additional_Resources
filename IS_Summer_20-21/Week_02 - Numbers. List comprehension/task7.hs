main :: IO()
main = do
    print $ countDigits 12345
    print $ countDigitsIter 12345
    return()

countDigits :: Integer -> Integer
countDigits n
 | n < 10 = 1
 | otherwise = 1 + countDigits (div n 10)

countDigitsIter :: Integer -> Integer
countDigitsIter n = helper n 1
 where
     helper :: Integer -> Integer -> Integer
     helper n result
      | n < 10 = result
      | otherwise = helper (div n 10) (result + 1)