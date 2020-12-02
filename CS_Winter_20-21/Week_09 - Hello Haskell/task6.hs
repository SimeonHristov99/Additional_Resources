main :: IO()
main = do
    print $ fib 11 == 89
    print $ fibIter 11 == 89
    print $ fibIter 110 == 43566776258854844738105
    --print $ fib 110

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)

fibIter :: Int -> Integer
fibIter x = if x < 0 then error "index was negative" else helper 0 1 x
 where
     helper n0 n1 leftover
      | leftover == 0 = n0
      | leftover == 1 = n1
      | otherwise = helper n1 (n0 + n1) (leftover - 1)