main :: IO()
main = do
    --print $ narcissistic 7 -- True
    --print $ narcissistic 12 -- False
    --print $ narcissistic 370 -- True
    --print $ narcissistic 371 -- True
    --print $ narcissistic 1634 -- True
    print $ isNar 7 -- True
    print $ isNar 12 -- False
    print $ isNar 370 -- True
    print $ isNar 371 -- True
    print $ isNar 1634 -- True
    return ()


-- Valid solution 1
isNar :: Int -> Bool
isNar n = helper n (countDig n) == n
 where
     helper :: Int -> Int -> Int
     helper n count
      | n < 10 = n^count
      | otherwise = (mod n 10)^count + helper (div n 10) count
     countDig :: Int -> Int
     countDig n
      | n < 10 = 1
      | otherwise = 1 + countDig (div n 10)

-- Valid solution 2
narcissistic :: Int -> Bool
narcissistic a = sum[a ^ length k | a <- k] == a
 where
     k = toList a
     toList :: Int -> [Int]
     toList a
      | a < 10 = [a]
      | otherwise = mod a 10 : toList (div a 10)