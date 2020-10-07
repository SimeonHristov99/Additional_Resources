import Data.List

main :: IO()
main = do
    print $ combine [1, 2, 5, 4, 0, 3, 1, -5, 6] [2, 0, 1, 6, 0, 32, 89]
    return ()

combine :: [Int] -> [Int] -> [Int]
combine xs ys = sort $ xs ++ ys