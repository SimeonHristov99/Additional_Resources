main :: IO()
main = do
    print $ checkRoot [(5, 25), (6, 36), (7, 47), (8, 88)] -- [True, True, False, False]
    return ()

checkRoot :: [(Int, Int)] -> [Bool]
checkRoot lst = [a * a == b | (a, b) <- lst]