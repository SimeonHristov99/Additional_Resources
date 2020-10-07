main :: IO()
main = do
    print $ findMax 55345 -- 5
    print $ findMax 14752 -- 7
    print $ findMax 329450 -- 9
    print $ findMax 9521 -- 9
    return ()

findMax :: Int -> Int
findMax n = findMax (div n 10) (mod n 10)
 where
     findMax ::Int -> Int -> Int
     findMax 0 currentMax = currentMax
     findMax leftOver currentMax
      | mod leftOver 10 > currentMax = findMax (div leftOver 10) (mod leftOver 10)
      | otherwise = findMax (div leftOver 10) currentMax