main :: IO()
main = do
    print $ isSorted [1, 2, 3, 3, 3, 4, 5, 6, 6] -- True
    print $ isSorted [1, 2, 3, 4, 5, 6, 1] -- False
    print $ isSorted [1, 2, 1] -- False
    print $ isSorted [1, -1, -3, -3, -3, -4, -5, -6, -6] -- True
    print $ isSorted [1, 2, 3, 3, 3, 4, 5, 6, 5] -- False
    return ()

-- checking with <=
isAscending :: [Int] -> Bool
isAscending [] = True
isAscending [a] = True
isAscending (a:b:cs)
 | a <= b = isAscending (b:cs)
 | otherwise = False

isDescending :: [Int] -> Bool
isDescending [] = True
isDescending [a] = True
isDescending (a:b:cs)
 | a >= b = isDescending (b:cs)
 | otherwise = False

isSorted :: [Int] -> Bool
isSorted [] = True
isSorted [a] = True
isSorted (a:b:cs)
 | a == b = isSorted cs
 | a < b = isAscending (b:cs)
 | otherwise = isDescending (b:cs)