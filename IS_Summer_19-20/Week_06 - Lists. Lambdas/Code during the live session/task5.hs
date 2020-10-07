main :: IO()
main = do
    print $ reverseOrdSuff 37563 -- 36
    print $ reverseOrdSuff 32763 -- 367
    print $ reverseOrdSuff 32567 -- 7
    print $ reverseOrdSuff 32666 -- 6

-- 37563 / 10 => mod 3756 10


reverseOrdSuff :: Int -> Int
reverseOrdSuff x
 | x < 10 = x
 | otherwise = helper (div x 10) (mod x 10)
  where
      helper :: Int -> Int -> Int
      helper leftOver result
       | mod leftOver 10 > mod result 10 = helper (div leftOver 10) (result * 10 + mod leftOver 10)
       | otherwise = result

{-
reverseOrdSuff 32763
> h 3276 3
> 6 > 3 => h (div leftOver 10) (result * 10 + mod leftOver 10)
-}