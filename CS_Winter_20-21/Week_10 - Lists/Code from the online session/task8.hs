main :: IO()
main = do
    print $ isImageTwo [] [] == True
    print $ isImageTwo [1, 2, 3] [2, 3, 4] == True
    print $ isImageTwo [1, 2, 3] [2, 5, 4] == False
    print $ isImageTwo [1, 2, 3] [2, 5] == False
    print $ isImageTwo [1, 2, 3] [2, 5] == False

isImage :: [Int] -> [Int] -> Bool
isImage xs ys = length xs == length ys
                   && [ x + (head ys) - (head xs) | x <- xs] == ys

isImage :: [Int] -> [Int] -> Bool
isImageTwo [] [] = True
isImageTwo (x:xs) (y:ys) = helper xs ys (y - x)
 where
     helper :: [Int] -> [Int] -> Int -> Bool
     helper [] [] _ = True -- wildcard
     helper (x:xs) (y:ys) n
      | y - x /= n = False
      | otherwise = helper xs ys n