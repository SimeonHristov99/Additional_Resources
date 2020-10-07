main :: IO()
main = do
    print $ sortN 1714 -- 7411
    print $ sortN 123450 -- 543210
    print $ sortN 123405 -- 543210
    print $ sortN 123045 -- 543210
    print $ sortN 120345 -- 543210
    print $ sortN 102345 -- 543210
    print $ sortN 8910 -- 9810
    print $ sortN 321 -- 321
    print $ sortN 29210 -- 92210
    print $ sortN 1230 -- 3210
    print $ sortN 55345 -- 55534
    print $ sortN 14752 -- 75421
    print $ sortN 329450 -- 954320
    print $ sortN 9125 -- 9521
    return ()
    
findMax :: Int -> Int
findMax n = findMax (div n 10) (mod n 10)
 where
     findMax ::Int -> Int -> Int
     findMax 0 currentMax = currentMax
     findMax leftOver currentMax
      | mod leftOver 10 > currentMax = findMax (div leftOver 10) (mod leftOver 10)
      | otherwise = findMax (div leftOver 10) currentMax

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

sortN :: Int -> Int
sortN number = sortN number 0
 where
     sortN :: Int -> Int -> Int
     sortN n result
      | n < 10 = result * 10 + n
      | otherwise = sortN (removeFistOccurrence n (findMax n)) (result * 10 + (findMax n))