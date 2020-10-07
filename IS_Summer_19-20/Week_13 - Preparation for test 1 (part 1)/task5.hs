main :: IO()
main = do
    print $ polydecrypt ['A'..'Z'] 5 1 7 "FYYFHPQUTJUTZUTVYYVDHBBMVIU" -- "ATTACKLONDONTOMORROWATTENAM"
    return ()

polydecrypt :: [Char] -> Int -> Int -> Int -> String -> String
polydecrypt _ _ _ _ [] = []
polydecrypt alphabet offset step blockSize encrypted = encrypt (take blockSize encrypted) ++ polydecrypt alphabet (offset+step) step blockSize (drop blockSize encrypted)
 where
     encrypt input = map (encode alphabet) input
      where
          encode alphabet char = alphabet!!(mod (offset * (-1) + (helper alphabet)) (length alphabet))
           where
               helper (x:xs)
                | x == char = 0
                | otherwise = 1 + helper xs

{-
Algorithm:
 1. Realize that using encrypt will work, since you have offset.
 2. Assemble the logic and solve the task.
-}