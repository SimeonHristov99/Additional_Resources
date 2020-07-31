import Data.Char

main :: IO()
main = do
    --print $ elem 6 (map digitToInt (show 61))
    print $ specialSum 1 100 -- 195 (the special numbers are 61, 65 and 69)
    return ()

--specialSum :: Int -> Int -> Int
--specialSum a b = sum [ x | x <- [a .. b], elem '6' (show x), mod (x - 1) 4 == 0]

isItGood :: Int -> Int -> Bool
isItGood number b = if number < b && (elem '6' $ show number) then True else False

specialSum :: Int -> Int -> Int
specialSum a b = sum [ 4*x+1 | x <- [a..b] , isItGood (4*x+1) b]