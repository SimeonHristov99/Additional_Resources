main :: IO()
main = do
    print $ checkRoot [] == []
    print $ checkRoot [(5, 25), (6, 36), (7, 47), (8, 88)] == [True, True, False, False]
    print $ checkRootHO [] == []
    print $ checkRootHO [(5, 25), (6, 36), (7, 47), (8, 88)] == [True, True, False, False]

checkRoot :: [(Int, Int)] -> [Bool]
checkRoot xs = [ x * x == y | (x, y) <- xs]

checkRootHO :: [(Int, Int)] -> [Bool]
checkRootHO xs = map (\ (x, y) -> x * x == y) xs