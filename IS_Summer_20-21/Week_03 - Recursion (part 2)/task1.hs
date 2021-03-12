main :: IO()
main = do
    print $ isNarcissistic 7 == True
    print $ isNarcissistic 12 == False
    print $ isNarcissistic 370 == True
    print $ isNarcissistic 371 == True
    print $ isNarcissistic 1634 == True

countDigits :: Int -> Int
countDigits n
 | n < 10 = 1
 | otherwise = 1 + countDigits (div n 10)

isNarcissistic :: Int -> Bool
isNarcissistic n
 | n < 0 = error "n was negative"
 | otherwise = n == helper n (countDigits n) -- 153 == 153
 where
     helper :: Int -> Int -> Int
     helper leftOver count
      | leftOver < 10 = leftOver^count
      | otherwise = (mod leftOver 10)^count + helper (div leftOver 10) count