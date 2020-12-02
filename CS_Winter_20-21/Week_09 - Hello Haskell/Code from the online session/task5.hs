main :: IO()
main = do
    print $ fact 11 == 39916800
    print $ fact 11 == 39916800
    print $ factIter 11 == 39916800
    -- factIter (-1)

fact :: Int -> Int
fact 0 = 1
fact n = if n < 0 then error "err" else n * fact(n - 1)

factIter :: Int -> Int
factIter n = if n < 0 then error "err" else helper n 1
 where
     helper :: Int -> Int -> Int
     helper leftover result
      | leftover == 0 = result
      | otherwise = helper (leftover - 1) (result * leftover)