main :: IO()
main = do
    print $ countOccurences 121 1 == 2
    print $ countOccurences (-5) 1

{-
1. What is the name of the function? countOccurences
2. How many arguments does it take? 2
3. What is the data type of the arguments? Int
4. What is the return type? Int
5. What are the names of the arguments? n findNum
6. When should an error be returned? n < 1
7. How would you solve it on a sheet of paper?
get digit by digit and check whether digit == findNum
-}
countOccurences :: Int -> Int -> Int
countOccurences n findNum
 | n < 10 = if n == findNum then 1 else 0
 | mod n 10 == findNum = 1 + countOccurences (div n 10) findNum
 | otherwise = countOccurences (div n 10) findNum