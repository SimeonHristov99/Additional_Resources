main :: IO()
main = do
    print $ sumTuple (4, 5) == 9
    print $ sumTuple (-5, 5) == 0
    print $ sumTuple (1, 5) == 6
    print $ (\ (x, y) -> x + y) (5, 6) == 11

-- sumTuple :: ([Int], Int) -> Int
-- sumTuple ((x:xs), y) = x + y -- x = 1, [1, 2, 3], y = 5

sumTuple :: (Int, Int) -> Int
sumTuple x = fst x + snd x