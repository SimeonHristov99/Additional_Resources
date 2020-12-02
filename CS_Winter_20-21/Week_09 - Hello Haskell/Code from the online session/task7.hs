import Data.Char

main :: IO()
main = do
    print $ perfect 1
    print $ perfect 6
    print $ perfect 495
    print $ perfectXs 1
    print $ perfectXs 6
    print $ perfectXs 495

sumDivs :: Int -> Int -> Int
sumDivs n i
 | i >= n = 0
 | mod n i == 0 = i + sumDivs n (i + 1)
 | otherwise = sumDivs n (i + 1)

perfectXs n = n == (sum $ filter (\ i -> mod n i == 0) [1 .. (n - 1)])

perfect :: Int -> Bool
perfect n = n == (sumDivs n 1)

-- 6 -> 1 2 3