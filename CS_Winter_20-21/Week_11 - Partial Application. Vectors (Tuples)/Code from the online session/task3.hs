main :: IO()
main = do
    print $ sumTuple (4, 5) == 9
    print $ sumTuple (-5, 5) == 0
    print $ sumTupleVec (4, 5) == 9
    print $ sumTupleVec (-5, 5) == 0
    print $ (\ (x, y) -> x + y) (4, 5)
    
sumTuple :: (Int, Int) -> Int
sumTuple (x, y) = x + y

sumTupleVec :: (Int, Int) -> Int
sumTupleVec x = fst x + snd x