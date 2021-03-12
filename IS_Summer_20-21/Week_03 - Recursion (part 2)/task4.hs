main :: IO()
main = do
    print $ removeFistOccurrence 15365 5 -- == 1536
    print $ removeFistOccurrence 1 2 -- == 1536
    print $ removeFistOccurrence 123 4 -- == 1536
    print $ removeFistOccurrence 15360 0 == 1536
    print $ removeFistOccurrence 15300 0 == 1530
    print $ removeFistOccurrence 15365 1 == 5365
    print $ removeFistOccurrence 35365 3 == 3565
    print $ removeFistOccurrence 1212 1 == 122
    print $ removeFistOccurrence 1212 2 == 121
    print $ removeFistOccurrence (removeFistOccurrence 1212 1) 1 == 22

{-
35365 3
a=35 b=56
> combine(a=35 rev(b=56))
-}
rev :: Int -> Int
rev n = helper n 0
 where
     helper :: Int -> Int -> Int
     helper leftOver result
      | leftOver < 10 = result * 10 + leftOver
      | otherwise = helper (div leftOver 10) (result * 10 + (mod leftOver 10))

{-
combine 35 56
> combine 356 5
-}
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