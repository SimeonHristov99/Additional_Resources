main :: IO()
main = do
    print (digpow 89 1)
    print (digpow 695 2)
    print (digpow 46288 3)
    print (digpow 135 1)
    print (digpow 92 1)
    print (digpow 10 3)
    return ()

{-
Subproblems:
    - convert the integer to a list.
    - reverse the list.
    - map the power function to this list and the one formed by p
    - sum the map
    - if the div sum n /= 0 then return it, else -1
-}

digpow :: Integer -> Integer -> Integer
digpow n p
 | mod s n == 0 = div s n
 | otherwise = -1
 where
     s = sum (powers (reverse(toList n)) p)
     powers :: [Integer] -> Integer -> [Integer]
     powers [] p = []
     powers (l:ls) p = l^p : (powers ls (p + 1))
     toList :: Integer -> [Integer]
     toList n
        | n < 10 = [n]
        | otherwise = mod n 10 : toList (div n 10)