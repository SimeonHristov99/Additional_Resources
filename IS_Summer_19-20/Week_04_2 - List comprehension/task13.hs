main :: IO()
main = do
    print $ checkRoot [(5, 25), (6, 36), (7, 47), (8, 88)] -- [True, True, False, False]
    return ()

checkRoot :: [(Int, Int)] -> [Bool]
checkRoot lst = [(fst x) ^ 2 == (snd x) | x <- lst]