main :: IO()
main = do
    print $ minToFront [2, 5, 8, 0, 6, 3] -- [0, 2, 5, 8, 6, 3]
    print $ minToFront [2, 5, 8, 0, 6, 0] -- [0, 2, 5, 8, 6]
    return ()

minToFront :: [Int] -> [Int]
minToFront [] = error "Empty list"
minToFront lst = k : (filter (/= k) lst)
 where
     minElement :: [Int] -> Int -> Int
     minElement [] currentMin = currentMin
     minElement (a:as) currentMin
      | a < currentMin = minElement as a
      | otherwise = minElement as currentMin
     k = minElement (tail lst) (head lst)