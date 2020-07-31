main :: IO()
main = do
    print $ findSum 0 2 10 -- 3578
    print $ findSum 5 3 5 -- 174
    return ()

findSum :: Int -> Int -> Int -> Int
findSum a b n = if n < 3 then error "n must be greater than 3" else sum [gen x | x <- [n - 1, n - 2 .. n - 3]]
 where
     gen :: Int -> Int
     gen 0 = a + b
     gen number = gen (number - 1) + 2^number * b