main :: IO()
main = do
    print $ checkNumber 2728 -- (4,15)
    print $ checkNumber 314155 -- (12,2)
    print $ checkNumber 121 -- (2,2)
    print $ f [1, 2, 3]
    return ()

toList n
 | n < 10 = [n]
 | otherwise = mod n 10 : toList (div n 10)

{-
toList 314155
> [5, 5, 1, 4, 1, 3]
-}

{-
toList n = 2728
> 8 : toList (div n 10)
-}

f :: [Int] -> Int
f lst = lst!!0

checkNumber :: Int -> (Int, Int)
checkNumber n = helper (reverse $ toList n) 0 [] []
 where
     helper :: [Int] -> Int -> [Int] -> [Int] -> (Int, Int)
     helper [] _ evenNumbers oddNumbers = (sum evenNumbers, sum oddNumbers)
     helper (x:xs) i evenNumbers oddNumbers
      | mod i 2 == 0 = helper xs (i + 1) (x : evenNumbers) oddNumbers
      | otherwise = helper xs (i + 1) evenNumbers (x : oddNumbers)

{-
checkNumber n = 314155
> helper (reverse $ toList n = 314155) 0 [] []
> helper [3, 1, 4, 1, 5, 5] 0 [] []
> helper (x = 3:xs = [1, 4, 1, 5, 5]) i = 0 evenNumbers = [] oddNumbers = []
> helper xs (i + 1) (x : evenNumbers) oddNumbers
....
> helper [] _ [1, 5, 2, 5,] [5, 2, 6, 5]
> (10, 50)
-}