main :: IO()
main = do
    print $ divison 2 7
    print $ divison 3 10 -- 9
    print $ divison 7 17 -- 14
    print $ divison 7 (-1) -- error "Can't work  with negative numbers"
    return ()

divison :: Int -> Int -> Int
divison divider number
 | number < 0 = error "Can't work  with negative numbers"
 | mod number divider == 0 = number
 | otherwise = divison divider (number - 1)