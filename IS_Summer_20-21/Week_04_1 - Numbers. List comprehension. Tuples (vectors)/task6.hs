main :: IO()
main = do
    print $ removeFistOccurrence 1212 1 -- 122
    print $ removeFistOccurrence 1212 2 -- 121
    print $ removeFistOccurrence (removeFistOccurrence 1212 1) 1 -- 22

removeFistOccurrence :: Int -> Int -> Int
removeFistOccurrence number digit
 | mod number 10 == digit = div number 10
 | mod number 10 == 0 = (helper (div number 10) (mod number 10)) * 10
 | otherwise = helper (div number 10) (mod number 10)
  where
      combine :: Int -> Int -> Int
      combine number1 number2
       | number2 < 10 = number1 * 10 + number2
       | otherwise = combine (number1 * 10 + (mod number2 10)) (div number2 10)
      helper :: Int -> Int -> Int
      helper leftOver result
       | mod leftOver 10 == digit = combine (div leftOver 10) result
       | otherwise = helper (div leftOver 10) (result * 10 + (mod leftOver 10))