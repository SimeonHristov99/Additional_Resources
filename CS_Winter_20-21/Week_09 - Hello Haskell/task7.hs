main :: IO()
main = do
    print $ perfect 1 == False
    print $ perfect 6 == True
    print $ perfect 495 == False
    print $ perfect 33550336 == True
    print $ perfectXs 1 == False
    print $ perfectXs 6 == True
    print $ perfectXs 495 == False
    print $ perfectXs 33550336 == True

sumDivs :: Int -> Int
sumDivs x = helper 1 0
 where
     helper i result
      | i >= x = result
      | mod x i == 0 = helper (i + 1) (result + i)
      | otherwise = helper (i + 1) result

perfectXs x = x == (sum $ filter (\i -> mod x i == 0) [1 .. x - 1])

perfect :: Int -> Bool
perfect x = x >= 0 && (sumDivs x) == x