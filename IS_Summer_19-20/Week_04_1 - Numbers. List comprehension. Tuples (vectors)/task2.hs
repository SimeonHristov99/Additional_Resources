main :: IO()
main = do
    print $ everyOther 1714
    print $ everyOther 12345
    print $ everyOther 891
    print $ everyOther 123
    print $ everyOther 2121
    print $ everyOther 4736778
    print $ everyOther 448575
    print $ everyOther 4214
    return () 

everyOther :: Int -> Int
everyOther n = helper n 0
 where
     helper :: Int -> Int -> Int
     helper n result
      | n < 10 = result
      | otherwise = helper (div n 100) (result * 10 + mod (div n 10) 10)