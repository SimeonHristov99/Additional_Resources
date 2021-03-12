main :: IO()
main = do
    print $ sumDigitsRec 12345 == 15
    print $ sumDigitsRec 123 == 6

sumDigitsRec :: Int -> Int
sumDigitsRec n
 | n < 0 = error "n was not positive"
 | n < 10 = n
 | otherwise = mod n 10 + sumDigitsRec (div n 10)










{-
growingPlant :: Int -> Int -> Int -> Int
growingPlant up down goal = helper up
 where
     helper :: Int -> Int
     helper afterDayI
      | afterDayI >= goal = 1
      | otherwise = 1 + helper (afterDayI - down + up)

growingPlant2 :: Int -> Int -> Int -> Int
growingPlant2 up down goal
 | up >= goal = 1
 | otherwise = div goal (up - down)

growingPlant3 :: Int -> Int -> Int -> Int
growingPlant3 up down goal = 1 + max 0 (div (goal - down - 1) (up - down))
-}
