main :: IO()
main = do
    print $ removNb 26 --[(15,21),(21,15)]
    print $ removNb 100 -- []
    print $ removNb 101 -- [(55,91),(91,55)]
    return ()

{-Brute force-}
removNb :: Int -> [(Int, Int)]
removNb n = [(x, y) | x <- [1 .. n], y <- ([1 .. x - 1] ++ [x + 1 .. n]), k - y - x == x * y]
 where
     k = sum [1 .. n]

{-For linear time
removNb :: Integer -> [(Integer, Integer)]
removNb n = [(x, div k (x + 1)) | x <- [1 .. n], x * div k (x + 1) == k - x - div k (x + 1), div k (x + 1) <= n]
 where
     k = div (n * (n + 1)) 2
-}