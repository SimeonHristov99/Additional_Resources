main :: IO()
main = do
    print $ factPM 11 == 39916800
    print $ factPM2 11 == 39916800
    -- print $ factPM2 (-5) -- should return an error
    print $ factGuards 11 == 39916800
    print $ factIter 11 == 39916800

{-
1. What is the name of the function? factPM
2. How many arguments does it take? 1
3. What is the data type of the arguments? Int
4. What are the names of the arguments? n
5. What is the return type? Int
6. When should an error be returned? n < 0
7. How would you solve it on a sheet of paper?
-}
factPM :: Int -> Int
factPM 0 = 1
factPM n = if n < 0 then error "n was negative" else n * factPM (n - 1) -- fact 5 = 5 * fact 4 = 5 * 4 *fact3

factPM2 :: Int -> Int
factPM2 0 = 1
factPM2 n
 | n < 0 = error "n was negative"
 | otherwise = n * factPM2 (n - 1)

factGuards :: Int -> Int
factGuards n
 | n < 0 = error "n was negative"
 | n == 0 = 1
 | otherwise = n * factGuards (n - 1)

{-
h 5 1
h 4 5
h 3 20
h 2 60
h 1 120
h 0 120
-}

factIter :: Int -> Int
factIter n = helper n 1
 where
     helper :: Int -> Int -> Int
     helper 0 result = result
     helper n result
      | n < 0 = error "n was negative"
      | otherwise = helper (n - 1) (result * n)