import Data.List

remove_element :: Eq a => [a] -> a -> [a]
remove_element [] _ = []
remove_element (m:ms) x
 | m == x = remove_element ms x
 | otherwise = m : remove_element ms x

findOdd :: [Int] -> Int
findOdd [] = error "Empty list detected!"
findOdd xs
 | (mod (length (filter (== (head xs)) xs)) 2) /= 0 = head xs
 | otherwise = findOdd (remove_element xs (head xs))