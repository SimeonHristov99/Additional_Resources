main :: IO()
main = do
    print $ insert 2 6 [1, 2, 5, 3, 65] -- [1, 2, 6, 5, 3, 65]
    print $ insert 5 6 [1, 2, 5, 3, 65] -- [1, 2, 5, 3, 65, 6]
    print $ insert 0 6 [1, 2, 5, 3, 65] -- [6, 1, 2, 5, 3, 65]
    return ()

insert :: Int -> Int -> [Int] -> [Int]
insert index element lst
 | length lst < index || index < 0 = error "Index out of bounds!"
 | length lst == index = lst ++ [element]
 | otherwise = reverse (helper index element lst [])
  where
      helper :: Int -> Int -> [Int] -> [Int] -> [Int]
      helper _ _ [] newList = newList
      helper i x (a:as) newList
       | i == 0 = helper 0 x [] (reverse as ++ (a : x : newList))
       | otherwise = helper (i - 1) x as (a : newList)