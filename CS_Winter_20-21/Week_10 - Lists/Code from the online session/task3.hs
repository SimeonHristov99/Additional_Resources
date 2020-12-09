main :: IO()
main = do
    print $ sumUneven 5 50 == 621
    print $ sumUneven 50 1 == 625
    print $ sumUneven 564 565 == 565
    print $ sumUnevenHO 5 50 == 621
    print $ sumUnevenHO 50 1 == 625
    print $ sumUnevenHO 564 565 == 565

sumUneven :: Int -> Int -> Int
sumUneven a b = sum [ x | x <- [min a b .. max a b], mod x 2 /= 0]

sumUnevenHO :: Int -> Int -> Int
sumUnevenHO a b = sum $ filter (\ x -> mod x 2 /= 0) [min a b .. max a b]