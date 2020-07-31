import Data.List -- has a build-in function elem

main :: IO()
main = do
    print $ isPresent 0 [0, -1, 2] -- True
    print $ isPresent 1 [0, 1, 2] -- True
    print $ isPresent 2 [0, 1, -2] -- False
    print $ isPresent 3 [0, 1, 2] -- True
    print $ isPresent2 0 [0, -1, 2] -- True
    print $ isPresent2 1 [0, 1, 2] -- True
    print $ isPresent2 2 [0, 1, -2] -- False
    print $ isPresent2 3 [0, 1, 2] -- True
    return ()

-- Solution 1
isPresent :: Int -> [Int] -> Bool
isPresent element [] = False
isPresent element (l:ls)
 | l == element = True
 | otherwise = isPresent element ls

-- Solution 2
isPresent2 element lst = elem element lst