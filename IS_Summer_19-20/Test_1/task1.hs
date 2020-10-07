main :: IO()
main = do
    print $ checkSequence [2, 9, 15] -- True
    print $ checkSequence [11, 14, 20, 27, 31] -- True
    print $ checkSequence [11, 14, 28, 27, 31] -- False
    print $ checkSequence [11, 14, 14, 29, 31] -- False
    return ()

checkSequence :: [Int] -> Bool
checkSequence [] = True
checkSequence [l1] = True
checkSequence (l1:l2:ls)
 | l1 >= l2 || div l2 l1 == 0 = False
 | otherwise = checkSequence (l2:ls)