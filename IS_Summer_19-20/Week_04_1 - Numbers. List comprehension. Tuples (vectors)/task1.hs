main :: IO()
main = do
    print $ removeD 1 656 -- 656
    print $ removeD 5 656 -- 66
    print $ removeD 6 656 -- 5
    print $ removeD 0 606 -- 66
    print $ removeD 0 600 -- 6
    print $ removeD 6 600 -- 0
    return ()

removeD :: Int -> Int -> Int
removeD d n = helper n 0
 where
     helper :: Int -> Int -> Int
     helper number result
      | number < 10 = if number == d then result else result * 10 + number
      | mod number 10 == d = helper (div number 10) result
      | otherwise = helper (div number 10) (result * 10 + (mod number 10))