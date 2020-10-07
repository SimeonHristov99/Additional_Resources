import Data.List

main :: IO()
main = do
    print $ mergeSort [1, 2, 5, 40, 0, -4, 3] [5, 6, 1, 0, 9, 7, 5, 3] -- [-4, 0, 0, 1, 1, 2, 3, 3, 5, 5, 5, 6, 7, 9, 40]
    return ()

mergeSort lst1 lst2 = sort $ lst1 ++ lst2