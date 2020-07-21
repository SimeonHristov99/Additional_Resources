main :: IO()
main = do
    print $ removeEveryKth 3 [1,2,3,4,5,6,7,8,9] == [1,2,4,5,7,8]
    print $ removeEveryKth 4 [1,2,3,4,5,6,7] == [1,2,3,5,6,7]
    print $ removeEveryKth 4 ["Steve", "John", "Bob", "Rob", "Joe"] == ["Steve", "John", "Bob", "Joe"]
    print $ removeEveryKth 4 [2] == [2]
    print $ removeEveryKth 1 [2] == []
    --print $ removeEveryKth 0 [2] -- should be an error
    return ()

removeEveryKth :: Int -> [a] -> [a]
removeEveryKth _ [] = []
removeEveryKth k xs
 | k <= 0 = error "k must be a natural number"
 | otherwise = take (k - 1) xs ++ removeEveryKth k (drop k xs)