main :: IO()
main = do
    print $ enigmadecrypt ['A'..'Z'] [(5,1,1),(7,2,10),(13,3,25)] "ZTUCFOQUULZZGCBEIJHQXRSEOFS" -- "ATTACKLONDONTOMORROWATTENAM"
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

enigmadecrypt :: [Char] -> [(Int, Int, Int)] -> String -> String
enigmadecrypt _ [] normalized = normalized
enigmadecrypt alphabet ((o, s, b):xs) normalized = enigmadecrypt alphabet xs (polydecrypt alphabet o s b normalized)