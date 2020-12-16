main :: IO()
main = do
    print $ checkRoot [(5, 25), (6, 36), (7, 47), (8, 88)] == [True, True, False, False]

checkRoot :: [(Int, Int)] -> [Bool]
checkRoot xs = [ x * x == y | (x, y) <- xs]

checkRootVec :: [(Int, Int)] -> [Bool]
checkRootVec xs = filter (\ (x, y) -> x * x == y) xs