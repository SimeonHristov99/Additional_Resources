main :: IO()
main = do
    print $ fib 11 == 89
    print $ fibIter 11 == 89
    --print $ fibIter 110 == 43566776258854844738105

fib :: Integer -> Integer
fib n
 | n < 0 = error "n was negative"
 | n < 2 = n
 | otherwise = fib (n - 1) + fib (n - 2)

fibIter :: Integer -> Integer
fibIter n = if n < 0 then error "n was negative" else helper 0 1 n
 where
     helper n0 n1 leftover
      | leftover == 0 = n0
      | leftover == 1 = n1
      | otherwise = helper n1 (n0 + n1) (leftover - 1)