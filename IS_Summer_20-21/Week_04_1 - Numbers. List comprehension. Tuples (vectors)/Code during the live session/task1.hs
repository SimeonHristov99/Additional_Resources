main :: IO()
main = do
    print $ removeDigit 5 1525
    print $ removeDigit 0 706
    return()

reverseDigit :: Int -> Int
reverseDigit number
 | number < 10 = number
 | otherwise = helper number 0
  where
      helper :: Int -> Int -> Int
      helper number newNumber
       | number < 10 = newNumber * 10 + number
       | otherwise = helper (div number 10) (newNumber * 10 + (mod number 10))

removeDigit :: Int -> Int -> Int
removeDigit d n
 | n < 10 = if n == d then 0 else n
 | otherwise = reverseDigit(helper d n 0)
  where
      helper :: Int -> Int -> Int -> Int
      helper digit number newNumber
       | number < 10 = if number == digit then newNumber else newNumber * 10 + number
       | mod number 10 == digit = helper digit (div number 10) newNumber
       | otherwise = helper digit (div number 10) (newNumber * 10 + (mod number 10))