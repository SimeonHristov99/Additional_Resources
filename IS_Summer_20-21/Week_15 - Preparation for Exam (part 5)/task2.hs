main :: IO()
main = do
    print $ (listToFunction [1,2,3]) 3 == 13
    print $ (listToFunction [1,2,3]) 1 == 11
    print $ (listToFunction [1,2,3]) 8 == 0

listToFunction:: [Int] -> (Int -> Int)
listToFunction lst = (\ x -> if elem x lst then x + 10 else 0)