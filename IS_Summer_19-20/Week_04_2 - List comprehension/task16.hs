main :: IO()
main = do
    print $ isSorted [1, 2, 3, 3, 3, 4, 5, 6, 6] -- True
    print $ isSorted [1, -1, -3, -3, -3, -4, -5, -6, -6] -- True
    print $ isSorted [1, 2, 3, 3, 3, 4, 5, 6, 5] -- False
    return ()

isSorted :: [Int] -> Bool
isSorted [] = True
isSorted [a] = True
isSorted (a:b:s)
 | a <= b = isAscending (b:s)
 | otherwise = isDescending (b:s)
  where
      isDescending :: [Int] -> Bool
      isDescending [] = True
      isDescending [a] = True
      isDescending (a:b:s)
       | a < b = False
       | otherwise = isDescending (b:s)
      isAscending :: [Int] -> Bool
      isAscending [] = True
      isAscending [a] = True
      isAscending (a:b:s)
       | a > b = False
       | otherwise = isAscending (b:s)