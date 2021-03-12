main :: IO()
main = do
    print $ sortN 1714 == 7411
    print $ sortN 123450 == 543210
    print $ sortN 123405 == 543210
    print $ sortN 123045 == 543210
    print $ sortN 120345 == 543210
    print $ sortN 102345 == 543210
    print $ sortN 8910 == 9810
    print $ sortN 321 == 321
    print $ sortN 29210 == 92210
    print $ sortN 1230 == 3210
    print $ sortN 55345 == 55543
    print $ sortN 14752 == 75421
    print $ sortN 329450 == 954320
    print $ sortN 9125 == 9521

sortN :: Int -> Int
sortN n = helper n 0
 where
     helper :: Int -> Int -> Int
     helper leftOver result
      | leftOver < 10 = result * 10 + leftOver
      | otherwise = helper (removeFistOccurrence leftOver (findMax leftOver)) (result * 10 + (findMax leftOver))

findMax :: Int -> Int
findMax n
 | n < 10 = n
 | otherwise = helper (div n 10) (mod n 10)
  where
      helper :: Int -> Int -> Int
      helper 0 currentMax = currentMax
      helper leftOver currentMax
       | mod leftOver 10 > currentMax = helper (div leftOver 10) (mod leftOver 10)
       | otherwise = helper (div leftOver 10) currentMax

combine :: Int -> Int -> Int
combine x 0 = x
combine x y
 | y < 10 = x * 10 + y
 | otherwise = combine (x * 10 + mod y 10) (div y 10)

{-
leftOver=15365 d=5 leftDigits=0
5 == 5 => 1536 0
-}
removeFistOccurrence :: Int -> Int -> Int
removeFistOccurrence n d = helper n 0
 where
     helper :: Int -> Int -> Int
     helper 0 leftDigits = n
     helper leftOver leftDigits
      | mod leftOver 10 == d = combine (div leftOver 10) leftDigits
      | otherwise = helper (div leftOver 10) (leftDigits * 10 + mod leftOver 10)