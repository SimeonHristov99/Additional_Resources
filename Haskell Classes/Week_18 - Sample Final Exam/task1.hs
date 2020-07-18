import Data.List

main :: IO()
main = do
    print $ biggestNumber [1,2,3,4,5] -- 54321
    print $ biggestNumber [1,5,5,3,5] -- 55531
    return ()

toNumber :: [Int] -> Int -> Int
toNumber [] result = result
toNumber (x:xs) result = toNumber xs (result * 10 + x)

biggestNumber :: [Int] -> Int
biggestNumber xs = toNumber (reverse $ sort xs) 0