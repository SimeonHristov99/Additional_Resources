main :: IO()
main = do
    print $ specialFives 99999 12 -- (23556,56688)
    print $ specialFives 30000 11 -- (24486,26686)
    print $ specialFives 99999 17 -- (23477,56678)
    return ()

specialFives :: Int -> Int -> (Int, Int)
specialFives n k = (head lst, last lst)
 where
     lst = [x | x <- [10000 .. n], mod x k == 0, check x]

check :: Int -> Bool
check n = helper n 6 9
 where
     helper :: Int -> Int -> Int -> Bool
     helper 0 _ _ = True
     helper number leftBound rightBound
      | mod number 10 >= leftBound && mod number 10 <= rightBound = helper (div number 10) (leftBound - 1) (rightBound - 1)
      | otherwise = False