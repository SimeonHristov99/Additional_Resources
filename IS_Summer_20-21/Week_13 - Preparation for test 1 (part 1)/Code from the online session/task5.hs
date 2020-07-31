main :: IO()
main = do
    print $ polydecrypt ['A'..'Z'] 5 1 7 "FYYFHPQUTJUTZUTVYYVDHBBMVIU" -- "ATTACKLONDONTOMORROWATTENAM"
    return ()

polyencrypt :: [Char] -> Int -> Int -> Int -> String -> String
polyencrypt _ _ _ _ [] = []
polyencrypt alphabet offset step blockSize input = (encrypt alphabet (take blockSize input) offset) ++
                                                        polyencrypt alphabet (offset + step) step blockSize (drop blockSize input)

polyencrypt _ _ _ _ [] = []
polydecrypt alphabet offset step blockSize input = (encrypt alphabet (take blockSize input) (length alphabet - offset)) ++ polydecrypt alphabet (offset + step) step blockSize (drop blockSize input)

polydecrypt :: [Char] -> Int -> Int -> Int -> String -> String
polydecrypt _ _ _ _ [] = []
polydecrypt alphabet offset step blockSize input = polyencrypt alphabet (offset - 2 *offset) (step - 2*step) blockSize input

polydecrypt :: [Char] -> Int -> Int -> Int -> String -> String
polydecrypt _ _ _ _ [] = []
polydecrypt alphabet offset step blockSize input = (encrypt (take blockSize input)) ++ polydecrypt alphabet (offset + step) step blockSize (drop blockSize input)


encrypt :: [Char] -> String -> Int -> String
encrypt alphabet input k = map (\x -> encode alphabet x) input
 where
     encode alphabet char = alphabet!!(mod ((helper alphabet) + k * (-1)) (length alphabet))
      where
          helper [] = error "blah"
          helper (x:xs)
           | x == char = 0
           | otherwise = 1 + helper xs