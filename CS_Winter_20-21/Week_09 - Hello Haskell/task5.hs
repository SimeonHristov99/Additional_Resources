main :: IO()
main = do
    print $ fact 11 == 39916800
    print $ factXs 11 == 39916800
    print $ factIter 11 == 39916800 -- when passing negative numbers don't forget ()
    -- print $ factIter (-1)

{- Naive. No validation
fact 0 = 1
fact x = x * fact (x - 1)
-}

factXs :: Int -> Int
factXs x = product [1 .. x]

fact :: Int -> Int
fact x
 | x < 0 = error "x was negative"
 | x == 0 = 1
 | otherwise = x * fact (x - 1)

factIter :: Int -> Int
factIter x = if x < 0 then error "x was negative" else helper 1 x
 where
     helper result leftover
      | leftover < 2 = result
      | otherwise = helper (result * leftover) (leftover - 1)