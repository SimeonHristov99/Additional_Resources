main :: IO()
main = do
    print $ mySin 100 1 -- 0.8414709848078965
    print $ mySin 100 0.5 -- 0.479425538604203
    return ()

mySin 0 x = 0
mySin n x = ((((-1)^(n-1))*(x^(2*(n-1)+1))) / fromIntegral(product [2 .. 2*(n-1) + 1])) + mySin (n - 1) x