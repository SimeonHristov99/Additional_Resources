main :: IO()
main = do
    print $ enigmaencrypt ['A'..'Z'] [(5,1,1),(7,2,10),(13,3,25)] "ATTACKLONDONTOMORROWATTENAM" -- "ZTUCFOQUULZZGCBEIJHQXRSEOFS"
    return ()

polyencrypt :: [Char] -> Int -> Int -> Int -> String -> String
polyencrypt _ _ _ _ [] = []
polyencrypt alphabet offset step blockSize normalized = (encrypt (take blockSize normalized)) ++ polyencrypt alphabet (offset+step) step blockSize (drop blockSize normalized)
 where
     encrypt input = map (encode alphabet) input
      where
          encode alphabet char = alphabet!!(mod (offset + (helper alphabet)) (length alphabet))
           where
               helper (x:xs)
                | x == char = 0
                | otherwise = 1 + helper xs

enigmaencrypt :: [Char] -> [(Int, Int, Int)] -> String -> String
enigmaencrypt _ [] normalized = normalized
enigmaencrypt alphabet ((o, s, b):xs) normalized = enigmaencrypt alphabet xs (polyencrypt alphabet o s b normalized)