main :: IO()
main = do
    print $ reverseOrdSuff 37563 -- 36
    print $ reverseOrdSuff 32763 -- 367
    print $ reverseOrdSuff 32567 -- 7
    print $ reverseOrdSuff 32666 -- 6
    return ()

reverseOrdSuff :: Int -> Int
reverseOrdSuff n
 | n < 10 = n
 | otherwise = helper (div n 10) (mod n 10)
  where
      helper :: Int -> Int -> Int
      helper leftOver result
       | leftOver < 10 = if leftOver > mod result 10 then result * 10 + leftOver else result
       | mod leftOver 10 > mod result 10 = helper (div leftOver 10) (result * 10 + mod leftOver 10)
       | otherwise = result