main :: IO()
main = do
    print $ findMax 55345 == 5
    print $ findMax 14752 == 7
    print $ findMax 329450 == 9
    print $ findMax 9521 == 9

{-
14752
> helper leftOver=1475 currentMax=2
> helper leftOver=147 currentMax=5
> helper leftOver = 14 currentMax = 7
> helper lefOver=1 curretMax = 7
> helper lefOver=0 curretMax = 7
> helper 0 7 = 7
-}

findMax :: Int -> Int
findMax n
 | n < 10 = n
 | otherwise = helper (div n 10) (mod n 10)
  where
      helper :: Int -> Int -> Int
      helper 0 currentMax = currentMax
      helper leftOver currentMax
       | mod leftOver 10 > currentMax = helper (div leftOver 10) (mod leftOver 10)
       | otherwise = helper (div leftOver 10) currentMax