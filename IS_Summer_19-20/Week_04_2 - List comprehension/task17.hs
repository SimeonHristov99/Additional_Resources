main :: IO()
main = do
    print $ combine [(3, 9), (8, 7), (7, 9), (8, 8), (5, 0), (9, 2)] -- (377802, 989859)
    print $ combine [(1, 2), (1, 2)] -- (11, 22)
    return ()

combine :: [(Int, Int)] -> (Int, Int)
combine [] = error "The list must contain at least one element!"
combine lst = helper 0 0 lst
 where
     helper :: Int -> Int -> [(Int, Int)] -> (Int, Int)
     helper s b [] = (s, b)
     helper  smaller bigger ((x, y):as)
      | x < y = helper (smaller * 10 + x) (bigger * 10 + y) as
      | otherwise = helper (smaller * 10 + y) (bigger * 10 + x) as