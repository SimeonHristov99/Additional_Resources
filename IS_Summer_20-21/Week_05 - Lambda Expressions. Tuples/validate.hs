import Data.List
import Data.Char

main :: IO()
main = do
    -- print $ zipWith (+) [1, 2, 3] [4, 5, 6]
    print $ validate 1714 == False
    print $ validate 12345 == False
    print $ validate 891 == False
    print $ validate 123 == False
    print $ validate 2121 == True
    print $ validate 4736778291034 == True
    print $ validate 4485756008412 == True
    print $ validate 4485756008422 == False
    print $ validate 4214154976719 == True

sumDigits :: Int -> Int
sumDigits n = sum $ map digitToInt $ show n

validate :: Int -> Bool
validate n = mod (sum $ zipWith (\ idx num -> if odd idx then sumDigits (num * 2) else num) [0 .. ] (reverse $ map digitToInt $ show n)) 10 == 0