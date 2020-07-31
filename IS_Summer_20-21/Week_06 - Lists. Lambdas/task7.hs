import Data.List

main :: IO()
main = do
    print $ sumUnique [[1,2,3,2],[-4,-4],[5]] -- 9 (= 1+3+5)
    print $ sumUnique [[2,2,2],[3,3,3],[4,4,4]] -- 0
    print $ sumUnique [[1,2,3],[4,5,6],[7,8,9]] -- 45
    return ()

sumUnique :: [[Int]] -> Int
sumUnique [] = 0
sumUnique [x] = sum $ onlyUnique $ sort x
sumUnique (x:xs) = sum (onlyUnique (sort x)) + sumUnique xs

onlyUnique [] = []
onlyUnique [x] = [x]
onlyUnique (x:y:ys)
 | x == y = onlyUnique (filter (/= x) ys)
 | otherwise = x : onlyUnique (y:ys)