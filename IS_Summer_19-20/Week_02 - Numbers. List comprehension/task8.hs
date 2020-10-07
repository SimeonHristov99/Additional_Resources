main :: IO()
main = do
    print $ sumDigits 12345
    print $ sumDigitsIter 123
    return()

sumDigits :: Integer -> Integer
sumDigits n
 | n < 10 = n
 | otherwise = mod n 10 + sumDigits (div n 10)

sumDigitsIter :: Integer -> Integer
sumDigitsIter n = helper n 0
 where
     helper :: Integer -> Integer -> Integer
     helper n sum
      | n < 10 = sum + n
      | otherwise = helper (div n 10) (sum + (mod n 10))