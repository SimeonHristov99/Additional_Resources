main :: IO()
main = do
    print $ iterator [3, 4, 5] (+1) -- True
    print $ iterator [1, 2, 4] (+1) -- False
    return ()

iterator :: [Int] -> (Int -> Int) -> Bool
iterator [] _ = True
iterator [x] _ = True
iterator (x:y:ys) f
 | f x == y = iterator (y:ys) f
 | otherwise = False