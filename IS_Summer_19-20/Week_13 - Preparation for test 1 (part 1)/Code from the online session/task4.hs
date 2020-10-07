main :: IO()
main = do
    print $ polyencrypt ['A'..'Z'] 5 1 7 "ATTACKLONDONTOMORROWATTENAM" -- "FYYFHPQUTJUTZUTVYYVDHBBMVIU"
    return ()

polyencrypt :: [Char] -> Int -> Int -> Int -> String -> String
polyencrypt _ _ _ _ [] = []
polyencrypt alphabet offset step blockSize input = (encrypt alphabet (take blockSize input) offset) ++
                                                        polyencrypt alphabet (offset + step) step blockSize (drop blockSize input)

-- 1. Pick which functions you need from the previous tasks.

encrypt :: [Char] -> String -> Int -> String
encrypt alphabet input k = map (\x -> encode alphabet x) input
 where
     encode alphabet char = alphabet!!(mod ((helper alphabet) + k) (length alphabet))
      where
          helper [] = error "blah"
          helper (x:xs)
           | x == char = 0
           | otherwise = 1 + helper xs