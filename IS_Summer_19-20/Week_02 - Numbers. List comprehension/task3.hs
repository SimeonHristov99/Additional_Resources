main :: IO()
main = do
    print (digitalRoot 16) -- 7 
    print (digitalRoot 942) -- 6
    print (digitalRoot 132189) -- 6
    print (digitalRoot 493139) -- 2
    return ()

digitalRoot :: Integer -> Integer
digitalRoot n
 | n < 10 = n
 | otherwise = if k < 10 then k else digitalRoot k
  where
      k = mod n 10 + digitalRoot (div n 10)