main :: IO()
main = do
    print $ hasIncDigits 1244 == True
    print $ hasIncDigits 12443 == False

hasIncDigits :: Int -> Bool
hasIncDigits n = if n < 0 then error "n was negative" else helper n
 where
     helper leftover
      | leftover < 10 = True
      | mod leftover 10 >= mod (div leftover 10) 10 = helper (div leftover 10)
      | otherwise = False