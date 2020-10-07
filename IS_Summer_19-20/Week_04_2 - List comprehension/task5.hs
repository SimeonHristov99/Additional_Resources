import Data.List

main :: IO()
main = do
    print $ filterOut 5 [1, 5, 3, 4, 5, 6, 9, 5, 5] -- [1, 3, 4, 6, 9]
    print $ filterOut 5 [6] -- [6]
    print $ filterOut 5 [] -- []
    return ()

filterOut :: Int -> [Int] -> [Int]
filterOut a lst = filter (/= a) lst 