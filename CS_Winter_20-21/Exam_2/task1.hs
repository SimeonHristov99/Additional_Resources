main :: IO()
main = do
    print $ findNb 0 == 0
    print $ findNb 1 == 1
    print $ findNb 2 == -1
    print $ findNb 3 == -1
    print $ findNb 4 == -1
    print $ findNb 5 == -1
    print $ findNb 6 == -1
    print $ findNb 7 == -1
    print $ findNb 8 == -1
    print $ findNb 9 == 2
    print $ findNb 1071225 == 45
    print $ findNb 40539911473216 == 3568
    print $ findNb 135440716410000 == 4824
    print $ findNb 4183059834009 == 2022
    print $ findNb 91716553919377 == -1
    print $ findNb 24723578342962 == -1

findNb :: Integer -> Integer
findNb 0 = 0
findNb m = helper 1 0
 where
     helper :: Integer -> Integer -> Integer
     helper n sum
      | nextSum > m = -1
      | nextSum == m = n
      | otherwise = helper (n + 1) nextSum
       where
           nextSum = sum + n * n * n