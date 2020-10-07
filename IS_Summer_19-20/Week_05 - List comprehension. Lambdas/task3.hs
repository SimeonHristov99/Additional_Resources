main :: IO()
main = do
    print $ doubleNumber 5
    print $ mapToList [1, 2, 3] -- [2, 4, 6]
    return ()

doubleNumber :: Int -> Int
doubleNumber = (\x -> 2 * x)

-- The solution is (\x -> 2 * x).

mapToList :: (Num a) => [a] -> [a]
mapToList lst = map (*2) lst