main :: IO()
main = do
    print $ factorize 2 == [2]
    print $ factorize 13 == [13]
    print $ factorize 152 == [2,2,2,19]
    print $ factorize 123 == [3,41]
    print $ factorize 1000000000000000000 == [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]
    --print $ factorize 1 -- should be an error
    return ()

isPrime n = if n < 2 then False else null [ x | x <- [2 .. n - 1], mod n x == 0]

factorize :: Int -> [Int]
factorize n = if n <= 1 then error "n was less than 2" else helper n (filter isPrime [2 .. n])
 where
     helper :: Int -> [Int] -> [Int]
     helper n (x:xs)
      | isPrime n = [n]
      | otherwise = if mod n x == 0 then x : helper (div n x) (x:xs) else helper n xs