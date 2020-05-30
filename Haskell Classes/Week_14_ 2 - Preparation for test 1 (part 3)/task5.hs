import Data.Char

main :: IO()
main = do
    print $ selfDividing 1 22 -- [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
    return ()

isSelfDividing :: Int -> [Int] -> Bool
isSelfDividing number xs = if elem 0 xs then False else length [ x | x <- xs, mod number x /= 0] == 0

selfDividing :: Int -> Int -> [Int]
selfDividing leftBound rightBound = [ x | x <- [leftBound .. rightBound], isSelfDividing x (map digitToInt $ show x)]