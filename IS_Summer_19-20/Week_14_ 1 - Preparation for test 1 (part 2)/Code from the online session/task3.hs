import Data.Char

main :: IO()
main = do
    print $ isInteresting 410 -- True
    print $ isInteresting 411 -- False
    return ()

isInteresting :: Int -> Bool
isInteresting number = if number < 1 then error "Number is not natural" else mod number (sum $ map digitToInt (show number)) == 0

{-
isInteresting::Int->Bool
isInteresting n
 | mod n (sum $ toList n) == 0 = True
 |otherwise = False

toList::Int->[Int]
toList x
 |x < 10 = [x]
 |otherwise = mod x 10 : toList (div x 10)

isInteresting:: Integer -> Bool
isInteresting number = if number `mod` (sumOfDigits number) == 0 then True else False

sumOfDigits :: Integer -> Integer
sumOfDigits number
 |number < 10 = number
 |otherwise = number `mod` 10 + sumOfDigits (number `div` 10)
-}