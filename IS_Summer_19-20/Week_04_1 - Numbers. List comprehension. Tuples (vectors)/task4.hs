main :: IO()
main = do
    print $ multiples 10 -- 23
    print $ multiples 20 -- 78
    print $ multiples 200 -- 9168
    return ()

multiples :: Int -> Int
multiples 1 = 0
multiples n
 | mod (n - 1) 3 == 0 || mod (n - 1) 5 == 0 = n - 1 + multiples (n - 1)
 | otherwise = multiples (n - 1)