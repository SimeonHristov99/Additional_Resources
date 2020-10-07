main :: IO()
main = do
    print $ factorize 152 -- [2, 2, 2,19] (2 * 2 * 2 * 19 = 152)
    print $ factorize 123 -- [3, 41] (3 * 41 = 123)
    print $ factorize 13 -- [13]
    return ()

isPrime n = if n < 2 then False else length [ x | x <- [2 .. n - 1], mod n x == 0] == 0

factorize :: Int -> [Int]
factorize n = if n <= 1 then error "blah" else helper n 2
 where
     helper :: Int -> Int -> [Int]
     helper leftOver divisor
      | isPrime leftOver = [leftOver]
      | isPrime divisor && mod leftOver divisor == 0 = divisor : helper (div leftOver divisor) 2
      | otherwise = helper leftOver (divisor + 1)


{-
f 152
> helper 152 2
> 2 : helper (76) 2
> 2 : (2 : helper (38) 2)
> 2 : 2 : 2 : helper 19 2
> 2 : (2 : (2 : [19])))
{-
Find the first prime number that divides n
-}