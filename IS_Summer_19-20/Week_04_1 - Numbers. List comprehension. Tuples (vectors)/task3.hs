main :: IO()
main = do
    print $ maxMultiple 2 7 -- 6
    print $ maxMultiple 3 10 -- 9
    print $ maxMultiple 7 17 -- 14
    print $ maxMultiple 10 50 -- 50
    print $ maxMultiple 37 200 -- 185
    print $ maxMultiple 7 100 -- 98
    return () 

maxMultiple :: Int -> Int -> Int
maxMultiple divisor bound
 | mod bound divisor == 0 = bound
 | otherwise = maxMultiple divisor (bound - 1)