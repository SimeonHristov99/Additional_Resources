main :: IO()
main = do
    print $ isAscending 258
    print $ isAscending 852
    print $ isAscending 123456
    print $ isAscending 326598
    return()

isAscending :: Integer -> Bool
isAscending n
 | n < 10 = True
 | otherwise = if mod n 10 >= mod (div n 10) 10 then isAscending (div n 10) else False