import Data.List

main :: IO()
main = do
    print $ minToFront [10, 5, 2, 2, 2, 5, 5, 8, 0, 6, 3] -- [0,10,5,2,8,6,3]
    print $ minToFront [2, 5, 8, 0, 6, 0] -- [0, 2, 5, 8, 6]
    return ()

{-
minToFront [2, 5, 8, 0, 6, 0]
> find the min element (minimum lst) => 0
> [0] ++ [2, 5, 8, 0, 6, 0] => [0, 2, 5, 8, 0, 6, 0]
> nub [0, 2, 5, 8, 0, 6, 0] => [0, 2, 5, 8, 6]
-}

minToFront :: [Int] -> [Int]
minToFront lst = nub $ [minimum lst] ++ lst