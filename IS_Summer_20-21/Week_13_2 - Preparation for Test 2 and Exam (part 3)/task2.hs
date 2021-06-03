import Data.List
import Data.Char

main::IO()
main = do
    print $ biggestNumber [1,2,3,4,5] == 54321
    print $ biggestNumber [1,5,5,3,5] == 55531

biggestNumber :: [Int] -> Int
biggestNumber = read . map intToDigit . reverse . sort